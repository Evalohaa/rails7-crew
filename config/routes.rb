Rails.application.routes.draw do
  root to: 'argonautes#index'
  resources :argonautes, only: :create
end
