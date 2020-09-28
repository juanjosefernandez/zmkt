Rails.application.routes.draw do
  resources :media
  resources :genres
  devise_for :users
  resources :listings
  resources :posts

  resources :users, only: [:index]

  resources :messages, only: [:new, :create]

  resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
  # resources :conversations, only: [:index, :show, :destroy] do
  #   member do
  #     post :restore
  #   end
  # end
  # resources :conversations, only: [:index, :show, :destroy] do
  #   collection do
  #     delete :empty_trash
  #   end
  # end
  # resources :conversations, only: [:index, :show, :destroy] do
  #   member do
  #     post :reply
  #   end
  # end
  # resources :conversations, only: [:index, :show, :destroy] do
  #   member do
  #     post :mark_as_read
  #   end
  # end

  # mailbox folder routes
  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash
  
  get 'pages/about'
  get 'pages/contact'
  get 'seller' => 'listings#seller'

  root 'listings#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
