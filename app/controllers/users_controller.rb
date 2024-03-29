class UsersController < ApplicationController
  
  def new
  	user = User.new
  end
  
  def create 
    user = User.new(user_params)
    if user.save
      redirect_to "/login"
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_update_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def show
  	@user = User.find(params[:id])
  end

  private 

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

  def user_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :img_url, :bio)
  end

end