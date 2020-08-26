class ChangeBandNullInUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :band_id, true
  end
end
