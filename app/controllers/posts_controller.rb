class PostsController < ApplicationController

  before_action :set_post, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @posts = Post.includes(:user).order("created_at Desc")
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to posts_path(post.id)
  end

  def show
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def search
    @post = Post.search(params[:keyword]).order("created_at Desc")
  end

  private
  def post_params
    params.require(:post).permit(:image, :text, category_ids: [] ).merge(user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
