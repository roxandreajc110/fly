class SaleOrder < ApplicationRecord
  belongs_to :buyer, class_name: "Buyer", foreign_key: "buyer_id"
  has_many :tickets, class_name: "Ticket"
end
