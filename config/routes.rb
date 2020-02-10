Rails.application.routes.draw do
  resources :vacations
  resources :telphones
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'hospitals/test'
  get 'hospitals/:id/edit' => 'hospitals#edit'
  root "pages#index"
  devise_for :users
  get 'pages/index'
  get 'pages/devise_test'
  resources :hospitals
end