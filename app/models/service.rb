class Service < ApplicationRecord

  belongs_to :ServiceType
  belongs_to :VehicleType

  validates :description, presence: true
  validates :openingTime, presence: true
  validates :closingTime, presence: true
  validates :cost, presence: true, numericality: true,numericality: {greater_than: 0}

end
