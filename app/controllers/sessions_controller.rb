class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = 'Hello, Adventurer.'
      redirect_to user_path(current_user[:id])
    else
      redirect_to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Come back again!"
    redirect_to '/'
  end
end
