class PostsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_user_id

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = current_user.posts.new(post_params)
    @post.save
    # @post = Post.create(post_params)
    redirect_to posts_path
  end

  def new
    @post = Post.new
  end

  private
  def post_params
    params.require(:post).permit(:image, :caption)
  end
end
