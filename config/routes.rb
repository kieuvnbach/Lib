require 'sidekiq/web'

Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'

    resources :books
  end


  authenticate :user, ->(u) { u.manager? } do


    resources :books
  end

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

  resources :authors
  resources :members
  resources :reservations
  resources :reviews
  resources :categories
  resources :home

end
