class BehaviorsController < ApplicationController

  def index
    render json: { behaviors: Behavior.all }
  end

end
