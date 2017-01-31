class CommentsController < ApplicationController
  before_action :find_commentable

  def new
  end

  def create
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

  def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Conversation.find_by_id(params[:conversation_id]) if params[:conversation_id]
  end

end
