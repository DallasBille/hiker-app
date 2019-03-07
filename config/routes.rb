Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :login, only: [:new, :create, :destroy]
  resources :national_parks, only: [:index, :show]
  resources :trails, only: [:index, :show]
  resources :user_trails, only: [:new, :create,:edit, :update, :destroy]
  resources :users, only: [:new, :show, :create]
  resources :lists, only: [:new, :create, :destroy]
  root 'trails#index'
end
