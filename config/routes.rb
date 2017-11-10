Rails.application.routes.draw do

  get  '/signup',    to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users

  root "home#index"

  post '/spaces', to: 'spaces#index'
  resources :spaces, only: [:index, :show]

  namespace :host do
    resources :spaces, only: [:new, :create, :edit, :destroy]
  end

end
