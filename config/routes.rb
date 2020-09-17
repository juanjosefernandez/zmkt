Rails.application.routes.draw do
  devise_for :users
  root 'listings#index'
  resources :listings
  get 'pages/about'
  get 'pages/contact'
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
