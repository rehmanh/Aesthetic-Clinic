Rails.application.routes.draw do
  resources :users
  resources :procedures
  resource :session
  resources :appointments
  resources :patient_records
  root "procedures#index"
  get 'signup' => "users#new"
end
