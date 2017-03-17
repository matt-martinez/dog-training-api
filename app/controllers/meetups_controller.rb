class MeetupsController < ApplicationController

  def search
    meetup_groups = Meetup.search(params[:zip], params[:radius])

    render json: { groups: meetup_groups }
  end

end
