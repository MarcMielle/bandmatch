class ChangeRehearsalFrequencyName < ActiveRecord::Migration[6.0]
  def change
    rename_column :preferences, :weekly_rehearsal_frequency, :weekly_rehearsal_frequency_min
  end
end
