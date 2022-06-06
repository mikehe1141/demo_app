class Party < ApplicationRecord
  has_many :guests

  accepts_nested_attributes_for :guests

  def total_guests
    guests_count + guests.sum(:rsvp_count)
  end
end
