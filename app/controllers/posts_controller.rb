class PostsController < ApplicationController

  def index
    @posts = Post.order(updated_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "New Post Created!"
      redirect_to posts_path
    else
      flash[:alert] = "Sorry, try again."
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "You successfully edited the post titled: " + @post.title
      redirect_to posts_path
    else
      render :new
    end
  end

  def destroy
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :image)
  end
end
