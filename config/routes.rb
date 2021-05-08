Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pages
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/mentions_legales', to: 'pages#mentions_legales'
end
