Rails.application.routes.draw do

  resources :posts
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  post 'friendships/create' #, controller: 'friendships', action: 'create', as: 'create' 

  delete 'friendships/destroy/:friend_id', controller: 'friendships', action: 'destroy',as: 'destroy'

  root 'users#index'

  devise_for :users
  get 'users/abc'
  resources  :users
  get 'home/index'
end
