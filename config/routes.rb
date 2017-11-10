Rails.application.routes.draw do

  get  '/signup',    to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

  root "home#index"

  post '/spaces', to: 'spaces#index'

  post '/reviews', to: 'space_ratings#create'

  resources :spaces

end
