class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      login(@user)
      flash[:notice] = "Logged In"
    else
      flash[:error] = "Failed to log in"
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

end
