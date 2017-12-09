Rails.application.routes.draw do
  resources :items
  resources :fabric_types
  resources :swatches
  resources :fabrics
  resources :bolts
  resources :users
  post 'authenticate', to: 'authentication#authenticate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
