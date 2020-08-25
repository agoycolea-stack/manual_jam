Rails.application.routes.draw do


  resources :stories
  resources :users , only: [:new, :create, :destroy]
  resources :sessions , only: [:new, :create, :destroy]
  root 'stories#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
