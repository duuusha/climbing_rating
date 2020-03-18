class Country < ApplicationRecord
  # validates :name, presence:  true
  validates :name, length: {minimum: 4}
  validates :image_file_name, allow_blank: true, format: {
      with: /\w+\.(gif|jpg|png)\z/i,
      message: "Accepts a path to a JPG, PNG, or GIF file"
  }

  has_many :states, dependent: :destroy
  # has_many :cities, dependent: :destroy
end
