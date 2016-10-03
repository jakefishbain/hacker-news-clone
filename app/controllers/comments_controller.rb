class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create

    @comment = Comment.new(comment: params[:comment], commenter_id: 1, article_id: params[:id])
    if @comment.save
      redirect_to article_path
    else
      render article_path
    end
  end
end
