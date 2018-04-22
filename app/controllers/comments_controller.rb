class CommentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.find(params[:post_id])
    @comments = Post.find_by_id(params[:post_id]).comments.all

    respond_to do |format|
      format.js
    end
  end

  def show_comments
    respond_to do |format|
      format.js
    end
  end

  def create
    puts current_user.posts.find_by_id(params[:post_id])
    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user_id: current_user.id))
    @comment.save
    # current_user.comments.create(comment_params.merge(user_id: current_user.id))
    redirect_to post_path(@post)
  end

  def new
    @comment = Comment.new
  end

  def method_name
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
