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
      flash[:success] = "Welcome to WanderLust! Add more information for your profile, and don't forget a photo of yourself!... Then you can begin sharing your wonderful experiences of the world..."
      redirect_to user_path(current_user)
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to '/signup'
    end
  end

  def show
    user_id = params[:id]
    @user = User.find_by_id(params[:id])
    @post = Post.find_by(id: user_id)
  end

  def edit
    @user = User.find_by_id(params[:id])
    if session[:user_id] != @user[:id]
      flash[:error] = "You are NOT authorized to edit this profile."
      redirect_to '/'
    end
  end

  def update
    @user = User.find_by_id(params[:id])
    if session[:user_id] == @user[:id]
      @user.update(user_params)
      flash[:notice] = "Successfully updated your profile."
      redirect_to user_path(@user)
    else
      flash[:error] = "We were unable to save your profile information"
      redirect_to edit_user_path(@user)
    end
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :pf_img, :bio, :languages)
  end

end
