class CommentsController < ApplicationController

  def index
    render json: { comments: Comment.all }
  end

  def show
    render json: { comment: Comment.find(params[:id]) }
  end

end
