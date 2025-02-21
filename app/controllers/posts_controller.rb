class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    if  valid?
    @post = Post.new(post_params)
  end

  def edit
  end

  def update
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :summary, :category)
  end
end
