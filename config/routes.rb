Rails.application.routes.draw do
  get 'products/new'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#new'
  #root 'dashboard#show'
  get 'dashboard', to: 'dashboard#new'

  get 'customer/signup', to: 'customers#new'
  get 'merchant/signup', to: 'merchants#new'
  get 'customer/login', to: 'c_sessions#new'
  get 'merchant/login', to: 'm_sessions#new'
  delete 'customer/logout', to: 'c_sessions#destroy'
  delete 'merchant/logout', to: 'm_sessions#destroy'

  post 'customer/login', to: 'c_sessions#create'
  get 'product', to: "products#new"

resources :customers, only: [:new, :create]
resources :c_sessions, only: [:new, :create]
resources :m_sessions, only: [:new, :create]
resources :merchants, only: [:new, :create, :index]
resources :merchants do
  resources :products
end
end
