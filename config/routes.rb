Rails.application.routes.draw do
  root to: 'sessions#new'
  resources :users, :only => [:show]  
  devise_for :users, controllers: { sessions: "users/sessions" }
  get 'users/show'
end
