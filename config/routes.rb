Rails.application.routes.draw do



 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'signup', to: 'customers#new'
get 'login', to: 'sessions#new'
get 'dashboard', to: 'dashboard#new' 
post 'login', to: 'sessions#create'
delete 'logout', to: 'sessions#destroy'

resources :customers
resources :sessions



end
