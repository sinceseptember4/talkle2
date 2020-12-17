Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets  do
    resources :comments ,only: [:create,:edit,:update,:destroy]
  end
  resources :users,only: [:show,:edit,:update]
  
end
