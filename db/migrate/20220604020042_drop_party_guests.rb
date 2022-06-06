class DropPartyGuests < ActiveRecord::Migration[7.0]
  def change
    drop_table :party_guests
  end
end
