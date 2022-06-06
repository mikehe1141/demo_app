class AddPartyToGuests < ActiveRecord::Migration[7.0]
  def change
    add_reference :guests, :party, null: false, foreign_key: true
  end
end
