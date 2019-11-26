Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#top'
  resources :posts do
    collection do
      get :search
    end
  end
  get '/posts', to: 'posts#index'
end
