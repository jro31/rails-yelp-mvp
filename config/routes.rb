Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Create
    get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
    post 'restaurants', to: 'restaurants#create'
  #Read
    get 'restaurants', to: 'restaurants#index'
    get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  #Update
    get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
    patch 'restaurants/:id', to: 'restaurants#update'
  #Destroy
    delete 'restaurants/:id', to: 'restaurants#destroy', as: :delete_restaurant
end
