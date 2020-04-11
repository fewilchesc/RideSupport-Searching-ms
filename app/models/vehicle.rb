class Vehicle < ApplicationRecord

  belongs_to :VehicleType

  validates :plate, presence: true
  validates :brand, presence: true
  validates :mainColor, numericality: false
  validates :secondaryColor, numericality: false
end
