class MusiciansController < ApplicationController
  def index
    @users = User.all
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def edit
  end

  def show
    @musician = User.find(params["id"])
  end

  def update
  end
end
