class PostsController < ApplicationController

  def index
    render json: { posts: Post.all }
  end

  def show
    render json: { post: Post.find(params[:id]) }
  end

end
