Rails.application.routes.draw do
  resources :reservations
  resources :comments
  devise_for :partners
  devise_for :admins
  resources :properties
  devise_for :users
  resources :admins
  resources :favorites, only: [:create, :destroy, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
end
