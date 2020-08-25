class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :conversation, null: false, foreign_key: true
      t.references :author, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
