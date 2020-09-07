Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :photos
  resources :albums
  # resources :users, except: [:index,:destroy]
  # namespace :admin do
  # resources :users
  # end

  root to: 'home#guest_feed_photo'
  get 'signup', to: 'home#signup'
  get 'login', to: 'home#login'
  get 'feed/photo', to: 'home#feed_photo'
  get 'feed/album', to: 'home#feed_album'
  get 'discover/photo', to: 'home#discover_photo'
  get 'discover/album', to: 'home#discover_album'
  get 'newest', to: 'home#newest'
  get 'guest/photo', to: 'home#guest_feed_photo'
  get 'guest/album', to: 'home#guest_feed_album'
  devise_for :users
  # get "signin" => "devise/sessions#new"
  # post "signin" => "devise/sessions#create"
  # delete "signout" => "devise/sessions#destroy"
end
