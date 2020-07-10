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
    if @user.update(user_params)
      redirect_to @user
    else
      redirect_to edit_user_parh(current_user)
    end
  end


  def user_params
    params.require(:user).permit(:nickname, :email, :image, :profile)
  end


end
