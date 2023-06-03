Rails.application.routes.draw do
  devise_for :users
  resources :patient_cards
  resources :patients
  resources :specializations
  resources :doctors
  resources :departments
  resources :clinics
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
