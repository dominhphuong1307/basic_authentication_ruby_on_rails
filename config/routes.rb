Rails.application.routes.draw do
  
  root to: 'mypages#index'
  devise_for :users
  resources :users

  namespace :admins do
    get "login" => "sessions#new"
    post "login" => "sessions#create"
    delete "logout" => "sessions#destroy"
    resources :users
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
