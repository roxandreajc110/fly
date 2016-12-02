class Passenger < ApplicationRecord
  has_many :tickets, class_name: "Ticket"
end
