Rails.application.routes.draw do
  root "home#index"

  get '/searches' => "searches#show"
  post '/searches' => "searches#show"
end
