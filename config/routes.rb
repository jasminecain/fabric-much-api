Rails.application.routes.draw do
  resources :items
  resources :fabric_types
  resources :swatches
  resources :fabrics do
    collection do
      get 'stores'
      get 'fabric_types'
    end
  end
  resources :bolts
  resources :users
  post 'authenticate', to: 'authentication#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
