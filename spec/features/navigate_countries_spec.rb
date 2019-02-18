require 'rspec'
require 'rails_helper'

describe 'Navigating countries' do
  it "allows navigation from the detail page to the listing page" do
    country1 = Country.create(name: "Russia", full_name: "Russian Federation")

    visit country_url(country1)

    click_link "All countries"

    expect(current_path).to eq(countries_path)
  end
end