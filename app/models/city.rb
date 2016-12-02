class City < ApplicationRecord
  has_many :airports, class_name: "Airport"
  validates :name, :country_name, :time_zone, presence: true 
end
