class MeetupsController < ApplicationController

  def search
    zip = params[:zip]
    radius = params[:radius]

    puts zip

    api_key = ENV['API_KEY']

    meetup_groups = HTTParty.get("https://api.meetup.com/find/groups?zip=#{zip}&radius=#{radius}&category=26&order=members&key=#{api_key}")

    render json: { groups: meetup_groups }
  end

end
