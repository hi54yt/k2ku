class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        format.html {redirect_to posts_path}
      else
        format.html {redirect_to 'new'}
      end
    end
  end
end
