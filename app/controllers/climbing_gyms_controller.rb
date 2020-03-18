class ClimbingGymsController < ApplicationController
  def index
  end

  def show
  end

  def new
    # @climbing_gym = ClimbingGym.new
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
    @country = Country.find(params[:id])
    @states = @country.states
  end

  def get_cities_by_state
    @state = State.find(params[:id])
    @cities = @state.cities
  end


end
