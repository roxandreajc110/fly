class Flight < ApplicationRecord
  belongs_to :origin, class_name: "Airport", foreign_key: "origin_airport_id"
  belongs_to :destination, class_name: "Airport", foreign_key: "destination_airport_id"
  belongs_to :airline, class_name: "Airline", foreign_key: "airline_id"
  has_many :itineraries, class_name: "FlightItinerary"
  has_many :planes, through: :itineraries

  validates :periodicity, :periodicity_time, :avg_time, presence: true

end
