Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :trails, :national_parks, :user_trails, only: [:index, :show, :new, :create, :update]
  resources :login, only: [:new, :create, :destroy]
end
