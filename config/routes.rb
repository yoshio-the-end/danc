Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#top'
  resources :posts
  get '/posts', to: 'posts#index'
end
