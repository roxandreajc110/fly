class FlightItinerariesController < ApplicationController

  def search_by_city
    city = City.find_by(id: params[:city_id])
    if city
      @origin_itineraries = FlightItinerary.includes(:plane, flight: [:origin, :destination] ).where(
          flight_id: Flight.select(:id).where(
            origin_airport_id: Airport.select(:id).where(
              city_id: city.id)))

      @destination_itineraries = FlightItinerary.includes(:plane, flight: [:origin, :destination]).where(
          flight_id: Flight.select(:id).where(
            destination_airport_id: Airport.select(:id).where(
              city_id: city.id)))
    else
      flash[:error] = "Error..."
      redirect_to root_path
    end
  end

end
