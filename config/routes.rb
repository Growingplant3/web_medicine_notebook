Rails.application.routes.draw do
  resources :vacations
  resources :hospitals
  resources :users
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'hospitals/test'
  get 'hospitals/:id/edit' => 'hospitals#edit'
  get 'pages/index'
  get 'pages/devise_test'
  get 'hospitals/prescription'
  root "pages#index"
end