Rails.application.routes.draw do
  root 'vehicles#index'
  resources :vehicles
  resources :vehicle_types
  resources :service_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
