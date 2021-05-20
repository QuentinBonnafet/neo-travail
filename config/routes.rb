Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pages
  resources :contacts, only: :create
  get '/contact', to: 'pages#contact'
  get '/a-propos', to: 'pages#about', as: :about

  get '/mentions_legales', to: 'pages#mentions_legales'
  post "send_contact" => "pages#send_contact"
end
