module Api
  class LocationsController < ActionController::API
    def get_countries
      countries = Country.order("name")
      render json: {status: 'SUCCESS', message:'Loaded countries', data:countries},status: :ok
    end


    def get_states
      country = Country.find(params["selected_country_id"])
      states = country.states
      render json: {status: 'SUCCESS', message:'Loaded states', data:states},status: :ok
    end


    def get_cities
      cities = City.order("name")
      render json: {status: 'SUCCESS', message:'Loaded cities', data:cities},status: :ok
    end
  end
end