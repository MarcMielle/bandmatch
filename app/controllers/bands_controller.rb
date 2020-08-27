class BandsController < ApplicationController

  def index
    @bands = Band.all
  end

  def show
  end

  def edit
    @band = Band.find(params[:id])
  end

  def update
    @band = Band.find(params[:id])
    @band.update(band_params)

    # no need for app/views/bands/update.html.erb
    # redirect_to band_path(@band)
  end

  def add_musician
  end

  private

  def band_params
    params.require(:band).permit(:name, :music_style, :avatar)
  end
end
