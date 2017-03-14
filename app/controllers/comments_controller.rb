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

  def update
    comment = Comment.find(params[:id])

    if comment.update(comment_params)
      render json: { status: 201, comment: comment }
    else
      render json: { status: 422 }
    end
  end

  def destroy
    comment = Comment.find(params[:id])

    comment.destroy
    render json: { status: 204 }
  end

  private

    def comment_params
      params.require(:comment).permit(:body, :user_id, :post_id)
    end
end
