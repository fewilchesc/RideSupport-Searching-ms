class ServiceType < ApplicationRecord
  String  :name
  validates :name, presence: true
end