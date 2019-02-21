class Country < ApplicationRecord
  def self.specific_countries
    where("name != 'Kazakhstan'")
  end
end
