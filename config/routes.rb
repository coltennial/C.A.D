Rails.application.routes.draw do
  root 'doctors#index'

  resources :clients
  resources :doctors
end
