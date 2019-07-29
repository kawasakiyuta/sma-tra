Rails.application.routes.draw do
  root to: 'subscriptions#index'
  devise_for :users
  
  resources :users, only: [:index, :edit, :update]
  resources :subscriptions
  resources :services

end
