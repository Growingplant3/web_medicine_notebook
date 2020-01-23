Rails.application.routes.draw do
<<<<<<< HEAD
  root "pages#index"
  devise_for :users
  get 'pages/index'
  get 'pages/devise_test'
end
=======
  root to: 'sessions#new'
  resources :users, :only => [:show]  
  devise_for :users, controllers: { sessions: "users/sessions" }
  get 'users/show'
end
>>>>>>> 739f3ba29518ae23dded719ba0b8830df8e6895d
