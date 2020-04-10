class Service < ApplicationRecord
  belongs_to :ServiceType
  belongs_to :VehicleType
end
