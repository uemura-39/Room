class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :follows, :followers, :likes]
  # before_action :move_to_mypage, only: [:edit, :update]

  def show
    @posts = @user.posts.order("created_at Desc")

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

  def follows
    user = User.find(params[:id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:id])
    @users = user.followers
  end

  def likes
    @like_posts = @user.like_posts.order("created_at Desc")
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
