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
    @post = Post.new(post_params)
    current_user.posts << @post
    if @post.save
      flash[:success] = "Awesome! Successfully saved a post"
      redirect_to posts_path
    else
      flash[:error] = "Could not post your entry"
      redirect_to '/'
    end
  end

  def show
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
  end

  def edit
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
  end

  def update
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
    user_id = current_user[:id]
    @post[:user_id] = user_id
    if session[:user_id] == @post.user_id
      @post.update(post_params)
      flash[:success] = "Successfully saved your changes."
      redirect_to post_path(@post)
    else
      flash[:error] = "Could not save your changes."
      redirect_to edit_post_path(@post)
    end
  end


  private
  def post_params
   params.require(:post).permit(:title, :text, :image, :location_id, :user_id)
  end

end
