class PostsController < ApplicationController
  def index
    @posts = Post.all.order(:created_at => :asc)
    @q = Post.ransack(params[:q])
    @search = @q.result(distinct: true)
    @user = User.find_by_id(params[:id])
  end

  def popular
    @posts = Post.all.order(:cached_votes_score => :desc)
    @user = User.find_by_id(params[:id])
  end

  def new
    @locations = Location.all
    @post = Post.new
    render :new
  end

  def create
    @post = Post.new(post_params)
    current_user.posts << @post
    if @post.save
      flash[:success] = "Awesome! Successfully saved your post"
      redirect_to posts_path
    else
      flash[:error] = "Could not create your new post:" + @post.errors.full_messages.join(", ")
      redirect_to :back
    end
  end

  def show
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
  end

  def edit
    post_id = params[:id]
    @post = Post.find_by(id: post_id)
    if session[:user_id] != @post.user_id
      flash[:error] = "You are not authorized to edit this post because it is not yours."
      redirect_to posts_path
    end
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
      flash[:error] = @post.errors.full_messages.join(", ")
      redirect_to edit_post_path(@post)
    end
  end

  def destroy
    set_post
    p @post.inspect
    if session[:user_id] == @post.user_id
      @post.destroy
      flash[:success] = "You have successfully deleted your post."
      redirect_to posts_path
    else
      flash[:error] = "You may only delete your own posts."
    end
  end

  #upvote_from user
  def upvote
    set_post
    @post.upvote_from current_user
    redirect_to :back
  end


  private
  def post_params
   params.require(:post).permit(:title, :text, :image, :location, :category)
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
