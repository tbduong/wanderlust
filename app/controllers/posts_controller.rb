class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @location = Location.find_by_id(params[:id])
    @post = Post.new
    render :new
  end

  def create
    location = Location.find_by_id(params[:id])
    post = Post.new(post_params)
    id = current_user[:id]
    post[:user_id] = id
    if post.save
      flash[:success] = "Awesome! Successfully saved a post"
      location.posts.append(post)
      redirect_to posts_path
    else
      flash[:error] = "Could not post your entry"
      redirect_to '/'
    end
  end

  def show
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
    location_id = params[:location_id]
    @location = Location.find_by(id: location_id)
  end

  private
  def post_params
   params.require(:post).permit(:title, :text, :image)
  end

end
