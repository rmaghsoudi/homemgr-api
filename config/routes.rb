Rails.application.routes.draw do
  namespace :api, :path => "", :constraints => {:subdomain => "api"} do
      resources :users
      resources :chores
      resources :occupants
      resources :grocery_items

      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
  end
end