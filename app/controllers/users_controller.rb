class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:first, :last, :email, :password, :username, :pf_img, :dob, :languages)
  end

end
