Rails.application.routes.draw do
  root 'rooms#index'
  resources :booking_histories
  resources :users
  resources :rooms
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
