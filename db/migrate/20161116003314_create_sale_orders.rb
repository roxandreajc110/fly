class CreateSaleOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :sale_orders do |t|
      t.integer :buyer_id
      t.datetime :buy_date

      t.timestamps
    end
  end
end
