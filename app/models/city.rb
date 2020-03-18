class City < ApplicationRecord
  belongs_to :state
  has_many :climbing_gyms
end
