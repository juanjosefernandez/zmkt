Rails.application.routes.draw do
  resources :media
  resources :genres
  devise_for :users
  resources :listings
  resources :posts

  resources :messages, only: [:new, :create]
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
    end
  end
  
  get 'pages/about'
  get 'pages/contact'
  get 'seller' => 'listings#seller'

  root 'listings#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
