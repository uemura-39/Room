class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    redirect_to @user
  end


  def user_params
    params.require(:user).permit(:nickname, :email, :image, :profile)
  end


end
