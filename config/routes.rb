Rails.application.routes.draw do
  resources :prototypes, only: [:index, :new, :create]
end
