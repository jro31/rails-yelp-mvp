Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #Create
    get 'restaurants/new', to: 'restaurants#new'
    post 'restaurants', to: 'restaurants#create'
  #Read
    get 'restaurants', to: 'restaurants#index'
    get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  #Update
    get 'restaurants/:id/edit', to: 'restaurants#edit'
    patch 'restaurants/:id', to: 'restaurants#update'
  #Destroy
    delete 'restaurant/:id', to: 'restaurants#destroy'
end
