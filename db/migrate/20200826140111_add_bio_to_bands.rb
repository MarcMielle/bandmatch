class AddBioToBands < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :bio, :text
  end
end
