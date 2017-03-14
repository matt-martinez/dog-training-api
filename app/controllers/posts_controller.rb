class PostsController < ApplicationController

  def index
    render json: { posts: Post.all }
  end

  def show
    render json: { post: Post.find(params[:id]) }
  end

  def createPost
    post = Post.new(post_params)

    if post.save
      render json: { status: 201, post: post }
    else
      render json: { status: 422 }
    end
  end

  def update
    post = Post.find(params[:id])

    if post.update(post_params)
      render json: { status: 201, post: post }
    else
      render json: { status: 422 }
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :body, :user_id)
    end
end
