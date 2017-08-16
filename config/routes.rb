Rails.application.routes.draw do

  root 'application#welcome'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

end
