Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, :trails, :national_parks, only: [:index, :show, :new, :create, :update]
  root 'users#welcome'
end
