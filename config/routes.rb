Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/signup', to: 'users#new', as: 'signup'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'
  get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'

  get '/login', to: 'sessions#new', as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  post '/login', to: 'sessions#create'

  get '/feed', to: 'posts#index', as: 'posts'
  get '/posts/new', to: 'posts#new', as: 'new_post'
  post '/feed', to: 'posts#create'
  get 'users/posts/:id', to: 'posts#show', as: 'post'
  get '/users/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  patch 'users/posts/:id', to: 'posts#update'
  delete 'users/posts/:id', to: 'posts#destroy', as: 'destroy_post'

end
