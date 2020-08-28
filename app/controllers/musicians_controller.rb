class MusiciansController < ApplicationController
  def index
    @users = User.all
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
    @musician = User.find(params["id"])
  end

  def update
    @user.update(user_params)

    # no need for app/views/users/update.html.erb
    # redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :location, :years_of_experience, :instrument, :music_styles, :weekly_rehearsal_frequency, :bio)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
