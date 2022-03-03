Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pages
  get '/a-propos', to: 'pages#about', as: :about
  get '/contact', to: 'contacts#new'
  get '/mentions_legales', to: 'pages#mentions_legales'

end
