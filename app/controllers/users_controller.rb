class UsersController < ApplicationController
  before_action :authorize, except: [:login, :create]

  def create
    user = User.new(user_params)

    if user.save
      render json: { status: 200, message: "ok" }
    else
      render json: { status: 422, user: user.errors }
    end
  end

  def show
    render json: { status: 200, user: current_user }
  end

  def user_params
    params.required(:user).permit(:name, :username, :email, :password)
  end

end
