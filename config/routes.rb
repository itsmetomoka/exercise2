Rails.application.routes.draw do
  root 'home#top'
  resources :users, only: [:show,:index,:edit,:update]
  resources :books
  devise_for :users
  get '#home' => 'home#about'
end