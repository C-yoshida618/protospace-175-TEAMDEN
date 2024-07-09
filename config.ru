Rails.application.routes.draw do
  resources :prototypes, only: [:new, :create, :destroy]
  root to: 'prototypes#index'
end
