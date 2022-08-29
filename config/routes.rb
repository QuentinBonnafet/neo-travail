Rails.application.routes.draw do
  devise_for :admins
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pages
  get '/a-propos', to: 'pages#about', as: :about
  get '/contact', to: 'contacts#new'
  get '/mentions_legales', to: 'pages#mentions_legales'

  # Admin ================================================================

  namespace :admin do
    resources :episodes
    resources :posts
    resources :contacts, except: %i[new create]

    root to: "admins#index"
  end

  resources :contacts, only: [:new, :create]

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
end
