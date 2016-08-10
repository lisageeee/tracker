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

  #trips
  get '/trips/', to: 'trips#show'

  #inbox
  get '/inbox/', to: 'inboxs#show'

  #profile
  get 'profiles/new', to: 'profiles#new'
  get '/profile', to: 'profiles#user', as: 'profile'
  post '/profile', to: 'profiles#create'

  resource :friends
end
