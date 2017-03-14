class CommentsController < ApplicationController

  def index
    render json: { comments: Comment.all }
  end




end
