class Plane < ApplicationRecord
  has_many :itineraries, class_name: "FlightItinerary"
  has_many :flights , through: :itineraries
  belongs_to :airline, class_name: "Airline", foreign_key: "airline_id"

  validates :code, :seats_b, presence: true
  
end
