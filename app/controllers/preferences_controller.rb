class PreferencesController < ApplicationController

    def update
        @preference = Preference.find(params[:id])
        @preference.update!(preference_params)
        redirect_to musicians_path
    end

    private

    def preference_params
        params.require(:preference).permit(:instrument, :age_min, :age_max, :gender, :years_of_experience_min, :weekly_rehearsal_frequency, :location, :location_radius_in_km, :music_style)
    end
end