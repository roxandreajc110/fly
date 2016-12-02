class Airport < ApplicationRecord
  belongs_to :city, class_name: "City", foreign_key: "city_id"
  has_many :flights_by_origin , class_name: "Flight", foreign_key: "origin_airport_id"
  has_many :flights_by_destination, class_name: "Flight", foreign_key: "destination_airport_id"


  validates :name, presence: true
end
