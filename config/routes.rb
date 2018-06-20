Rails.application.routes.draw do
  resources :users
  resources :procedures
  resource :session
  resource :appointments

  get 'signup' => "users#new"
end
