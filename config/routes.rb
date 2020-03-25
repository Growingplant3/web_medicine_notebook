Rails.application.routes.draw do
  resources :vacations
  resources :hospitals
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'hospitals/test'
  get 'hospitals/:id/edit' => 'hospitals#edit'
  get 'pages/index'
  get 'pages/devise_test'
  get 'users', to: 'users#index'
  get 'pages/allergy'
  get 'pages/sick'
  get 'pages/operation'
  root "pages#index"
end