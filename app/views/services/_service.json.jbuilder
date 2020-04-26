json.extract! service, :id, :ServiceType_id, :VehicleType_id, :description, :openingTime, :closingTime, :cost, :location, :created_at, :updated_at
json.url service_url(service, format: :json)
