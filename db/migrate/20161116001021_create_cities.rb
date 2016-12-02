class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :country_name
      t.string :time_zone

      t.timestamps
    end
  end
end
