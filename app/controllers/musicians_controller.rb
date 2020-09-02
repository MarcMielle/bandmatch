class MusiciansController < ApplicationController
  def index
    @users = current_user.filtered_musicians_with_affinity_score.includes(avatar_attachment: :blob)
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
    user_scope = User.where(id: params[:id])
    @musician_with_score = current_user.filtered_musicians_with_affinity_score(user_scope).first
  end

  def update
    @user.update(user_params)

    # no need for app/views/users/update.html.erb
    # redirect_to user_path(@user)
  end

  def join
    @band = Band.find(params[:band_id])
    @user = User.find(params[:id])
    @user.update(band: @band)

    redirect_to band_path(@band)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :location, :years_of_experience, :instrument, :music_styles, :weekly_rehearsal_frequency, :bio)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
