Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pages
  resources :contacts, only: :create
  get '/about', to: 'pages#about'
  get '/page_contact', to: 'pages#page_contact'
  get '/mentions_legales', to: 'pages#mentions_legales'

  # Admin ================================================================

  namespace :admin do
    resources :episodes
    resources :posts
    resources :contacts

    root to: "admins#index"
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
