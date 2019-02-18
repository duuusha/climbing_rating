require 'rspec'
require 'rails_helper'

describe 'Viewing an individual country' do
  it "shows the country details" do
    country1 = Country.create(name: "Russia", full_name: "Russian Federation")

    visit country_url(country1)

    expect(page).to have_text(country1.full_name)
  end
end