class CommentsController < ApplicationController

  def index
    render json: { comments: Comment.all }
  end

  def show
    render json: { comment: Comment.find(params[:id]) }
  end

  def createComment
    comment = Comment.new(comment_params)

    if comment.save
      render json: { status: 201, comment: comment }
    else
      render json: { status: 422 }
    end
  end


  private

    def comment_params
      params.require(:comment).permit(:body, :user_id, :post_id)
    end
end
