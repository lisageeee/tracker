Rails.application.routes.draw do

  root             'users#new'
  get 'users/new'
  get 'signup'  => 'users#new'
  get 'users/new'

  # Facebook Login
  get 'sessions/create'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'


  #dashboard
  get 'dashboards/new', to: 'dashboards#new'
  get '/dashboard', to: 'dashboards#user', as: 'dashboard'
  post '/dashboard', to: 'dashboards#create'
end
