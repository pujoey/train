Rails.application.routes.draw do
  resources :users, only: [:new, :create, :update, :show, :edit]
  resources :sessions, only: [:new, :create, :destroy]
  resources :messages, only: [:index]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  root 'welcome#index'

end
