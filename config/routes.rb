Rails.application.routes.draw do
  resources :payments
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static#index'
end
