class FlightItinerary < ApplicationRecord
  belongs_to :plane, class_name: "Plane", foreign_key: "plane_id"
  belongs_to :flight, class_name: "Flight", foreign_key: "flight_id"
  has_many :tickets, class_name: "Ticket"
end
