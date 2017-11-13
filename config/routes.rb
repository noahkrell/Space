Rails.application.routes.draw do
  root "home#index"

  get  '/signup',    to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users



  resources :spaces, only: [:index, :show]

  namespace :host do
    resources :spaces, only: [:new, :create, :edit, :update, :destroy]
  end
  post '/spaces/:id/review', to: 'space_ratings#create'
  post '/spaces', to: 'spaces#index'
  post 'spaces/:id/book', to: "bookings#create"
  # resources :spaces
  resources :space_ratings, only: :update
end
