class CountriesController < ApplicationController
  def index
    # @countries = Country.all
    @countries = Country.order("name")
    # @countries = Country.specific_countries
  end

  def show
    @country = Country.find(params[:id])
    @states = @country.states
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    if @country.update(country_params)
      redirect_to @country, notice: "Country successfully updated"
    else
      render :edit
    end
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.new(country_params)
    if @country.save
      redirect_to @country
    else
      render :new
    end
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    redirect_to countries_url
  end

  private

  def country_params
    params.require(:country).permit(:name, :full_name, :image_file_name)
  end
end
