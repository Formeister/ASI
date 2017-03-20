Rails.application.routes.draw do

  get 'users/new'

  resources :days

  resources :users

  root 'home#index'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
end