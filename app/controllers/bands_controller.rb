class BandsController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def add_musician
  end

  def band_params
    params.require(:band).permit(:name, :music_style, :avatar)
  end
end
