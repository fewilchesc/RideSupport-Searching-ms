class Vehicle < ApplicationRecord
  String :plate
  String :brand
  String :model
  String :mainColor
  String :secondaryColor

  belongs_to :VehicleType

  validates :plate, presence: true
  validates :brand, presence: true
  validates :mainColor, numericality: false
  validates :secondaryColor, numericality: false
end
