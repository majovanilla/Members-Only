Rails.application.routes.draw do
  root to: 'posts#index'
  resources :posts, only: [:new, :create, :index]
  get '/posts', to: 'posts#new'
  post '/posts', to: 'posts#create'

  resources :users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/logout', to: 'sessions#destroy'

end
