Rails.application.routes.draw do
  resources :relationships
  resources :taxonomies
  resources :articles
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
