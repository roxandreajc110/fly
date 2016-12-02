class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def new
    @flight = Flight.new
    @airports = Airport.all
    @airlines = Airline.all
  end

  def edit
    find_flight
    @airports = Airport.all
    @airlines = Airline.all
    if @flight.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end

  def create
    @flight = Flight.new(flight_params)
    @airports = Airport.all
    @airlines = Airline.all
    if @flight.save
      redirect_to flights_path
    else
      flash[:success] = "Flight created. Ok"
      render 'new'
    end
  end

  def destroy
    find_flight
    if @flight.destroy
      flash[:success] = "Flight Destroyed Successfully"
    else
      flash[:error] = "Houston we are in troubles, please try it later"
    end
    redirect_to flights_path
  end

  def update
    find_flight
    if @flight.update(flight_params)
      flash[:success] = "Flight updated. Ok"
      redirect_to flights_path
    else
      flash[:error] = "Houston we are in troubles, try it again."
      render 'edit'
    end
  end


  def show
    find_flight
    if @flight.nil?
      flash[:error] = "Houston we are in troubles, please dont hack us."
      redirect_to root_path
    end
  end





  private

  def find_flight
    @flight = Flight.find_by(id: params[:id])
  end

  #strong parameters
  def flight_params
    params.require(:flight).permit(:origin_airport_id, :destination_airport_id, :airline_id, :periodicity, :periodicity_time, :avg_time )
  end

end
