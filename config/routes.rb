Rails.application.routes.draw do
  
  resources :carts
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :items
  resources :users


  root 'items#index'

end
