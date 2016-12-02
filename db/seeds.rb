# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
bogota = City.find_or_create_by(name: "Bogota",
    country_name: "Colombia",
    time_zone: "GMT - 5")

medellin = City.find_or_create_by(name: "Medelli",
    country_name: "Colombia",
    time_zone: "GMT - 5")

Airport.find_or_create_by(name: "El dorado",
    city_id: bogota.id
    )

Airport.find_or_create_by(name: "Jose Maria",
    city_id: medellin.id
    )

Airline.find_or_create_by(
    name: "LATAM"
)

Airline.find_or_create_by(
    name: "AVIANCA"
)

Flight.find_or_create_by(
  origin_airport_id: bogota.airports.find_by(name: "El dorado").id,
  destination_airport_id: medellin.airports.find_by(name: "Jose Maria").id,
  periodicity: "d2",
  periodicity_time: Time.zone.now,
  avg_time: 1,
  airline_id: Airline.first
  )

Flight.find_or_create_by(
  origin_airport_id: bogota.airports.find_by(name: "El dorado").id,
  destination_airport_id: medellin.airports.find_by(name: "Jose Maria").id,
  periodicity: "d2",
  periodicity_time: Time.zone.now,
  avg_time: 1,
  airline_id: Airline.last
  )

Flight.find_or_create_by(
  origin_airport_id: medellin.airports.find_by(name: "Jose Maria").id,
  destination_airport_id: bogota.airports.find_by(name: "El dorado").id,
  periodicity: "d2",
  periodicity_time: Time.zone.now,
  avg_time: 1,
  airline_id: Airline.first
  )

Flight.find_or_create_by(
  origin_airport_id: medellin.airports.find_by(name: "Jose Maria").id,
  destination_airport_id: bogota.airports.find_by(name: "El dorado").id,
  periodicity: "d2",
  periodicity_time: Time.zone.now,
  avg_time: 1,
  airline_id: Airline.last
  )

Plane.find_or_create_by(
  code: "MYLITTLEPLANE",
  seats_a: 150,
  seats_b: 1,
  airline_id: Airline.first
)

Plane.find_or_create_by(
  code: "MYLITTLEDOG",
  seats_a: 1,
  seats_b: 150,
  airline_id: Airline.last
)

FlightItinerary.find_or_create_by(
  plane_id: Plane.first.id,
  flight_id: Flight.first.id,
  departure_time: Time.zone.now + 4.hours + 55.minutes
)

FlightItinerary.find_or_create_by(
  plane_id: Plane.last.id,
  flight_id: Flight.second.id,
  departure_time: Time.zone.now + 6.hours + 55.minutes
)

FlightItinerary.find_or_create_by(
  plane_id: Plane.first.id,
  flight_id: Flight.third.id,
  departure_time: Time.zone.now + 8.hours + 55.minutes
)

FlightItinerary.find_or_create_by(
  plane_id: Plane.last.id,
  flight_id: Flight.fourth.id,
  departure_time: Time.zone.now + 10.hours + 55.minutes
)
