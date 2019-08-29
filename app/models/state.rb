class State < ApplicationRecord
  validates :name, length: {minimum: 4}

  belongs_to :country
  has_many :cities, dependent: :destroy
end
