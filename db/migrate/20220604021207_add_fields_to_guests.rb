class AddFieldsToGuests < ActiveRecord::Migration[7.0]
  def change
    add_column :guests, :rsvp_count, :integer, null: false, default: 0
    add_column :guests, :dietary_info, :string, null: false, default: "none"
  end
end
