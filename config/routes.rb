Rails.application.routes.draw do
  devise_for :users
  root to: "reservations#new"
  resources :reservations , only: [:new, :create]
end
