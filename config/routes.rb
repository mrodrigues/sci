Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :relationships
  resources :taxonomies
  resources :articles
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
