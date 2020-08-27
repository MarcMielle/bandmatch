class MusiciansController < ApplicationController
  def index
    @musicians = User.all
    @markers = @musicians.geocoded.map do |musician|
      {
        lat: musician.latitude,
        lng: musician.longitude
      }
    end
  end

  def edit
  end

  def show
  end

  def update
  end
end
