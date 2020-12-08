Rails.application.routes.draw do
  root "pages#index"
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
  get 'pages/show'
  get 'hospitals/prescription'
  get 'clinicaldepartment/index'
  get 'clinicaldepartment/new'
  get 'clinicaldepartment/show'
  get 'clinicaldepartment/edit'
  get 'clinicaldepartment/create'
end