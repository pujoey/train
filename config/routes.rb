Rails.application.routes.draw do
  resources :users, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  root 'users#index'

end
