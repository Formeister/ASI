Rails.application.routes.draw do

  get 'users/new'

  resources :days

  root 'home#index'
end