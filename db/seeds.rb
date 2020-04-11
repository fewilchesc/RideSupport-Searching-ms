# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

numOfServiceTypes = 6
numOfVehicles = 10
numOfServiceTypes.times do |row|
  ServiceType.create(name: Faker::Company.unique.industry)
end

VehicleType.create(name: 'Bicicleta')
VehicleType.create(name: 'Moto')
VehicleType.create(name: 'Carro')
VehicleType.create(name: 'Camioneta')
VehicleType.create(name: 'Taxi')
VehicleType.create(name: 'Bus')

numOfVehicles.times do |row|
  @brand = Faker::Vehicle.make
  Vehicle.create(VehicleType_id: rand(1..VehicleType.count),plate:  Faker::Vehicle.license_plate,brand: @brand,model: Faker::Vehicle.model(make_of_model: @brand),mainColor: Faker::Color.color_name ,secondaryColor: Faker::Color.color_name )
end

for i in 1..VehicleType.count
  for j in 1..numOfServiceTypes
    Service.create(ServiceType_id: j,VehicleType_id: i,description: Faker::Lorem.sentences ,openingTime: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),closingTime: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),cost: rand(1000..20000),location: Faker::Address.full_address)
  end
end