class VehicleType < ApplicationRecord
  String  :name
  has_many :vehicles

  validates :name, presence: true
end
