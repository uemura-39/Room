class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @posts = @user.posts
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      redirect_to edit_user_parh(current_user)
    end
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :image, :profile)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
