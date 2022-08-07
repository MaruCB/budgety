# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'transactions#index'

  resources :transactions, except: [:index]

  # get "about", to: "pages#about"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
