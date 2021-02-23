# frozen_string_literal: true

Rails.application.routes.draw do
  get 'game/input'
  get 'game/output'
  root 'session#login'
  get 'session/login'
  get 'session/create'
  get 'session/logout'
  post 'session/create'
  get 'users/index'
  post 'users/new'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
