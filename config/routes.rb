Rails.application.routes.draw do
  resources :users
  resources :procedures
  resource :session
  resources :appointments
  resources :patient_records
  resources :patient_notes
  root "procedures#index"
  get 'signup', to: "users#new"
end
