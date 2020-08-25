class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :location, :string
    add_column :users, :gender, :string
    add_column :users, :years_of_experience, :integer
    add_reference :users, :band, null: false, foreign_key: true
    add_column :users, :instrument, :string
    add_column :users, :music_styles, :string, array: true, default: []
    add_column :users, :weekly_rehearsal_frequency, :integer
    add_column :users, :bio, :text
    add_column :users, :soundcloud_url, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
