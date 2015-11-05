Rails.application.routes.draw do
  resources :trainers
  resources :users
  resources :sessions
  resources :messages
  resources :schedules
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'

  root 'welcome#index'

end
