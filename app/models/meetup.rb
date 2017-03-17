class Meetup < ApplicationRecord


  def self.search(zip, radius)
    api_key = ENV['API_KEY']

    HTTParty.get("https://api.meetup.com/find/groups?zip=#{zip}&radius=#{radius}&category=26&order=members&key=#{api_key}")
  end
end
