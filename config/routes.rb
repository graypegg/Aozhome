Rails.application.routes.draw do
  resources :things
  resources :users
  resources :manufacturers

  root 'things#index'
end
