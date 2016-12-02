class CreatePlanes < ActiveRecord::Migration[5.0]
  def change
    create_table :planes do |t|
      t.string :code
      t.integer :seats_a
      t.integer :seats_b
      t.integer :airline_id

      t.timestamps
    end
  end
end
