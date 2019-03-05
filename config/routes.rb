Rails.application.routes.draw do

    # resources :trails, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :login, :trails, :user_trails, :national_parks, only: [:index, :show, :new, :create, :update]
  root 'trails#index'
end
