Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#new'
  #root 'dashboard#show'
  get 'dashboard', to: 'dashboard#new'

  get 'customer/signup', to: 'customers#new'
  get 'merchants/signup', to: 'merchants#new'
  get 'customer/login', to: 'sessions#new'
  get 'merchant/login', to: 'sessions#new'
  delete 'customer/logout', to: 'sessions#destroy'
  get 'merchant/logout', to: 'sessions#destroy'

  post 'customer/login', to: 'sessions#create'

resources :customers, only: [:new, :create]
resources :c_sessions, only: [:new, :create]
resources :m_sessions, only: [:new, :create]
resources :merchants, only: [:new, :create, :index]

end
