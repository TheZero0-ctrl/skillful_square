# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'home#index'

  get 'dashboard', to: 'dashboard#index'

  resources :products, only: %i[index new create edit update] do
    resources :contents, only: [:index], controller: 'products/contents'
  end

  scope module: :products, path: :products, as: :product do
    resources :publish, only: %i[update]
    resources :unpublish, only: %i[update]
  end
end
