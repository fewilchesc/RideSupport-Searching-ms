class VehicleType < ApplicationRecord
  String  :name

  validates :name, presence: true
end
