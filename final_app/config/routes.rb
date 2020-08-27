Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :photos
  resources :albums
  resources :users, except: [:index,:destroy]
  namespace :admin do
  resources :users
  end

  root to: "home#guestfeed"
  get 'signup', to: 'home#signup'
  get 'login', to: 'home#login'
  get 'feed/photo', to: 'home#feed_photo'
  get 'feed/album', to: 'home#feed_album'
  get 'discover/photo', to: 'home#discover_photo'
  get 'discover/album', to: 'home#discover_album'
end
