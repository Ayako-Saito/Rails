class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = current_user.comments.new(comment_params)
      redirect_to posts_path


  end

  private
  def comment_params
    params.require(:comment).permit(:post)
  end

end
