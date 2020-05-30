# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comments
  resources :memes
  resources :categories
  get 'vote/:id', to: 'memes#vote'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
