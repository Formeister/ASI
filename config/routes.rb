Rails.application.routes.draw do

  resources :days

  root 'home#index'
end