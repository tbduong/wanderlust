class PostsController < ApplicationController
  def index
  end

  def new
    @post = Post.new
    @posts = Post.all
  end

  def create
    @post = Post.create(post_params)
  end

  private
  def post_params
   params.require(:post).permit(:id, :title, :text, :user_id, :location_id)
  end

end
