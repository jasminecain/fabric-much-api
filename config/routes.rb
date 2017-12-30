Rails.application.routes.draw do
  resources :items
  resources :fabric_types
  resources :fabrics do
    collection do
      get 'stores'
      get 'fabric_types'
    end
  end
  resources :users
  resources :inventory_types
  resource :authentications, :only => [:create, :destroy]

  # post 'authenticate', to: 'authentication#create'
  # delete 'authenticate', to: 'authentication#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
