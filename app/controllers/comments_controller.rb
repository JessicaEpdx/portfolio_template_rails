class CommentsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new
  end

  def create
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
