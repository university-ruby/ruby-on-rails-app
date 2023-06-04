Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'menu/index'
  get 'patients/by_clinic/:clinic_id', to: 'patients#by_clinic'
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
