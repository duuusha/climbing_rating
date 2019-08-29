class StatesController < ApplicationController
  def index
    @country = Country.find(params[:country_id])
    @states = @country.states
  end

  def show

  end

  def new
    @country = Country.find(params[:country_id])
    @state = State.new
  end

  def create
    @state = State.new(params.require(:state).permit(:name, :country_id))
    @state.save
  end
end
