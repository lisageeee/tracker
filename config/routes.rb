Rails.application.routes.draw do
  get 'users/new'

  root             'users#new'
  get 'signup'  => 'users#new'
  get 'users/new'
end
