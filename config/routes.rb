Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/signup', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'

  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'
end
