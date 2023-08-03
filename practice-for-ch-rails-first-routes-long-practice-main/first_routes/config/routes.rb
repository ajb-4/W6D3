Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  # get 'chirps/:id', to: 'chirps#show'
  # post 'chirps', to: 'chirps#create'
  # get 'chirps', to: 'chirps#index'
  # patch 'chirps/:id', to: 'chirps#update'
  # put 'chirps/:id', to: 'chirps#update'
  # get 'chirps/new', to: 'chirps#new'
  # delete 'chirps/:id', to: 'chirps#destroy'
  # get 'chirps/:id/edit', to: 'chirps#edit'
  # Defines the root path route ("/")
  # root "articles#index"
end
