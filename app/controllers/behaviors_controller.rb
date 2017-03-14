class BehaviorsController < ApplicationController

  def index
    render json: { behaviors: Behavior.all }
  end

  def show
    render json: { behavior: Behavior.find(params[:id]) }
  end

end
