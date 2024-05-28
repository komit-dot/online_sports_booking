Rails.application.routes.draw do
  devise_for :users
  get 'search', to: 'search#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root 'sports#index'
  resources :sports
  resources :booking_details


end
