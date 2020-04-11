Rails.application.routes.draw do
  resources :services
  resources :vehicles
  resources :vehicle_types
  resources :service_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'vehicles#index', as: 'root'
  get '/vehicle_types/:id/vehicles', to: 'vehicles#vehiclesByType', as: 'show_vehicles_by_type'
  get '/vehicle_types/:id/services', to: 'services#servicesByVehicleType', as: 'show_services_by_vehicle_type'
  get '/service_types/:id/services', to: 'services#servicesByType', as: 'show_services_by_type'
end
