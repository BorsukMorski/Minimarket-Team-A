Rails.application.routes.draw do
  get 'product/index'
  root 'product#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
