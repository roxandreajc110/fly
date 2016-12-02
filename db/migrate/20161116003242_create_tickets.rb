class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.integer :itinerary_id
      t.integer :sale_order_id
      t.integer :passenger_id

      t.timestamps
    end
  end
end
