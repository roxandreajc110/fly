class CreateFlightItineraries < ActiveRecord::Migration[5.0]
  def change
    create_table :flight_itineraries do |t|
      t.integer :plane_id
      t.integer :flight_id
      t.datetime :departure_time

      t.timestamps
    end
  end
end
