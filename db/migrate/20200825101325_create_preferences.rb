class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.references :entity, null: false, polymorphic: true
      t.string :instrument
      t.integer :age_min
      t.integer :age_max
      t.string :gender
      t.integer :years_of_experience_min
      t.integer :weekly_rehearsal_frequency
      t.string :location
      t.integer :location_radius_in_km
      t.string :music_style
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
