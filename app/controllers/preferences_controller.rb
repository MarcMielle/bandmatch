class PreferencesController < ApplicationController

    def update
        @preference.update(preference_params)
    end

    private

    def preference_params
        params.require(:preference).permit(:instrument, :age_min, :age_max, :gender, :years_of_experience_min, :weekly_rehearsal_frequency_min, :location, :location_radius_in_km, :music_style)
    end
end