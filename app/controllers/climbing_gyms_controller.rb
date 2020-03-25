class ClimbingGymsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  end

  def show
  end

  def new
    @countries = Country.all
    @states = get_states_by_country
  end

  def create
    @climbing_gym = ClimbingGym.new(params.
        require(:climbing_gym).
        permit(:name, :city_id))
    # @climbing_gym.valid?
    # @climbing_gym.errors
    @climbing_gym.save
    redirect_to new_climbing_gym_path
  end



  def get_states_by_country
    if params["selected_country_id"] != nil
      @country = Country.find(params["selected_country_id"])
      @states = @country.states
      render json: {status: 'SUCCESS', message:'Loaded states', data:@states},status: :ok
    else
      @country = Country.find(1)
      @states = @country.states
    end
  end

  def get_cities_by_state
    @state = State.find(params[:id])
    @cities = @state.cities
  end


end
