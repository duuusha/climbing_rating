class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    country_params = params.require(:country).permit(:name, :full_name)
    @country.update(country_params)
    redirect_to @country
  end
end
