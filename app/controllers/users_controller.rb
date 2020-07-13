class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :move_to_mypage, only: [:edit, :update]

  def show
    @posts = @user.posts
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      redirect_to edit_user_path(current_user)
    end
  end

  def user_params
    params.require(:user).permit(:nickname, :email, :image, :profile)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def move_to_mypage
    if @current_user != @user
      redirect_to root_path
    end
  end

end
