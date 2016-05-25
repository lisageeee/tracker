Rails.application.routes.draw do
  get 'sessions/create'

  get 'users/new'

  root             'users#new'
  get 'signup'  => 'users#new'
  get 'users/new'

  # Facebook Login
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
