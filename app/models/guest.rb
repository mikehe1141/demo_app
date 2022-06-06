class Guest < ApplicationRecord
  DIETARY_OPTIONS = {
    vegan: "vegan",
    vegetarian: "vegetarian",
    na: "n/a",
  }

  belongs_to :party, counter_cache: true

  enum dietary_info: DIETARY_OPTIONS

  def self.dietary_options
    DIETARY_OPTIONS.map do |name, value|
      OpenStruct.new(name: name, value: value)
    end
  end
end
