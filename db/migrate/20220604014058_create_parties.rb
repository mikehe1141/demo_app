class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.string :title, null: false
      t.timestamp :party_at, null: false
      t.integer :guests_count, default: 0, null: false

      t.timestamps
    end
  end
end
