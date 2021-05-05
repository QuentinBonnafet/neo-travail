Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :pages

  get '/contact', to: 'pages#contact'
  resources :contact_form, only: [:create]
end
