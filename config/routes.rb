Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/devise_test'
  delete 'pages/logout'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#index"
end
