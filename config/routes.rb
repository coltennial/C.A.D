Rails.application.routes.draw do
  devise_for :users
  root 'doctors#index'
  get 'appointments/index'
  get 'appointments/new'
  

  resources :clients
  resources :doctors do 
    resources :appointments, only: [:index, :new, :create, :destroy]
    
  end
end
