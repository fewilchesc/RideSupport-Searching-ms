class ServiceType < ApplicationRecord
  has_many :service
  validates :name, presence: true
end