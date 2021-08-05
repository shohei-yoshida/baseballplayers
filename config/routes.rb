Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :users
  resources :players
  resources :scores
  
  get '/players-search', to: 'players#search'
end
