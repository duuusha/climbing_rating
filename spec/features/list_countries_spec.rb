require 'rspec'
require 'rails_helper'

describe 'Viewing the list of countries' do
  it "shows the country" do
    country1 = Country.create(name: "Russia", full_name: "Russian Federation")
    country2 = Country.create(name: "Ukraine")
    country3 = Country.create(name: "Belarus")
    country4 = Country.create(name: "Kazakhstan")

    visit countries_url

    expect(page).to have_text("4 Countries")
    expect(page).to have_text(country1.name)
  end
end