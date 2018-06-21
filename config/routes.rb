Rails.application.routes.draw do
  resources :users
  resources :procedures
  resource :session
  resources :appointments
  root "procedures#index"
  get 'signup' => "users#new"
end
