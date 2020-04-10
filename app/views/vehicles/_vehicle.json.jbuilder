json.extract! vehicle, :id, :VehicleType_id, :vehiclePlate, :vehicleBrand, :vehicleModel, :mainColor, :secondaryColor, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
