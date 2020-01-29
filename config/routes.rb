Rails.application.routes.draw do
  get 'companies/test'
  get 'companies/:id/edit' => 'companies#edit'
  root "pages#index"
  devise_for :users
  get 'pages/index'
  get 'pages/devise_test'
  resources :companies
end