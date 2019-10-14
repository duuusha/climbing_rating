class State < ApplicationRecord
  validates :name, length: {minimum: 2}
  belongs_to :country
  has_many :cities, dependent: :destroy
end
