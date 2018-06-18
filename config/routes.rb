Rails.application.routes.draw do
  resources :users
  resources :procedures
  resource :session

  get 'signup' => "users#new"
end
