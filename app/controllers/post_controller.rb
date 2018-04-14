class PostController < ApplicationController
  before_action :authenticate_user!

  def index
    end
  def create
    Post.new(params)
  end

  private
  def post_params
    params.require(:post).permit(:image, :caption)
  end
end
