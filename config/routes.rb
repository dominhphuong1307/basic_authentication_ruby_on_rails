Rails.application.routes.draw do
  
  get 'histories/show'
  get 'history/show'
  root to: 'mypages#index'
  get "quizzes/index"
  post "quizzes/start" 
  get "quizzes/question"
  post "quizzes/question"
  post "quizzes/answer" 
  post "quizzes/end" 
  devise_for :users
  resources :users
  resources :histories , only: [:show, :index] do
  resources :downloads , only: [:show]
  end
  namespace :admins do
    get "login" => "sessions#new"
    get "home" => "homes#index"
    post "login" => "sessions#create"
    delete "logout" => "sessions#destroy"
    resources :users
    resources :questions, only: [:new, :create,:show,:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
