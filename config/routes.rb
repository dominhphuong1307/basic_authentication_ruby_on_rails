Rails.application.routes.draw do
  
  root to: 'mypages#index'
  devise_for :users
  resources :users

  namespace :admins do
    root to: "sessions#new"
    get "home" => "homes#index"
    get "login" => "sessions#new"
    post "login" => "sessions#create"
    delete "logout" => "sessions#destroy"
    resources :users
    resources :questions, only: [:new, :create,:show,:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
