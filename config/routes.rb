Rails.application.routes.draw do
  devise_for :partners
  devise_for :admins
  resources :properties
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
end
