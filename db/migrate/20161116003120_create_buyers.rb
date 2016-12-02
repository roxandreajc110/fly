class CreateBuyers < ActiveRecord::Migration[5.0]
  def change
    create_table :buyers do |t|
      t.string :full_name
      t.string :gov_id
      t.string :company
      t.string :address
      t.string :country

      t.timestamps
    end
  end
end
