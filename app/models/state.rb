class State < ApplicationRecord
  validates :name, length: {minimum: 4}

  belongs_to :country
end
