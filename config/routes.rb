Rails.application.routes.draw do
  resources :users
  resources :user_steps
  root 'products#index'
  resources :reviews
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
