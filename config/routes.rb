Rails.application.routes.draw do
  # devise options explicitly specified（明示的にcontrollerとURLを指定）
  devise_for :users,controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :users

  resources :vacations
  resources :hospitals
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'hospitals/test'
  get 'hospitals/:id/edit' => 'hospitals#edit'
  get 'pages/index'
  get 'pages/devise_test'
  get 'hospitals/prescription'
  root "pages#index"
end