class CreatePartyGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :party_guests do |t|
      t.references :party, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: true
      t.integer :rsvp_count
      t.string :dietary_info

      t.timestamps
    end
  end
end
