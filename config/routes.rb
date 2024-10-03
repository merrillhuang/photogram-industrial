Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "photos#index"

  devise_for :users
  
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/:username" => "users#show", as: :user
  get "/:username/liked" => "users#liked", as: :liked
  get "/:username/feed" => "users#feed", as: :feed
  get "/:username/discover" => "users#feed", as: :discover
  get "/:username/followers" => "users#feed", as: :followers
  get "/:username/following" => "users#feed", as: :following
end
