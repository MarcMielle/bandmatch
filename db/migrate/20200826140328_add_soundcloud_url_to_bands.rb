class AddSoundcloudUrlToBands < ActiveRecord::Migration[6.0]
  def change
    add_column :bands, :soundcloud_url, :string
  end
end
