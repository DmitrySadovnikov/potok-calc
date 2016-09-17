Rails.application.routes.draw do
  resources :companies
  root to: 'static#index'
end
