class VehicleType < ApplicationRecord
  has_many :services
  has_many :vehicles
end
