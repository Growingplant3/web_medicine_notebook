Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  get 'pages/index'
  get 'pages/devise_test'
end
