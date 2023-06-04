Rails.application.routes.draw do
  get 'info_documentation/index', to: 'info_documentation#index'
  get 'info_documentation/csv', to: 'info_documentation#csv'
  get 'info_documentation/pdf', to: 'info_documentation#pdf'
  get 'info_documentation/pdf_by_clinic_id/:clinic_id', to: 'info_documentation#pdf_by_clinic_id'
  get 'info_documentation/pdf_by_patient_id/:patient_id', to: 'info_documentation#pdf_by_patient_id'
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
