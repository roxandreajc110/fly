class Buyer < ApplicationRecord
  has_many :sale_orders, class_name: "SaleOrder"
end
