class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(comment_params)
    @comment.author_id = current_user.id
    @posts = Post.all
    if @comment.save
      flash[:notice] = "You added a comment to the post titled: " + @post.title
      respond_to do |format|
        format.html { redirect_to posts_path}
        format.js
      end
    else
      flash[:notice] = "Please fill out title and description"
      respond_to do |format|
        format.html { redirect_to posts_path}
        format.js
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def comment_params
      params.require(:comment).permit(:title, :content)
    end


end
