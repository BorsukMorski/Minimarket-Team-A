Rails.application.routes.draw do
  root 'dashboard#show'

  get 'merchants/new'
  get 'login', to: 'sessions#new'
  get 'logout', to: 'sessions#destroy'

  resources :sessions, only: [:create]
  resources :merchants, only: [:new, :create, :index]

end
