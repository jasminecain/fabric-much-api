Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :items
  resources :fabric_types
  resources :swatches
  resources :fabrics
  resources :bolts
  resources :users
  post 'authenticate', to: 'authentication#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
