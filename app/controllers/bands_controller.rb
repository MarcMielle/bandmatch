class BandsController < ApplicationController
  before_action :set_band, only: [:show, :edit, :update]

  def index
    @bands = Band.all
  end

  def show
  end

  def edit
  end

  def update
    @band.update(band_params)

    # no need for app/views/bands/update.html.erb
    # redirect_to band_path(@band)
  end

  private

  def band_params
    params.require(:band).permit(:name, :music_style, :avatar)
  end

  def set_band
    @band = Band.find(params[:id])
  end
end
