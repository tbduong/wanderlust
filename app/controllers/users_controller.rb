class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def show
    user_id = params[:id]
    @user = User.find_by_id(params[:id])
    @post = Post.find_by(id: user_id)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :pf_img, :dob, :languages)
  end

end
