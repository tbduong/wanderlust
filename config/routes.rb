Rails.application.routes.draw do
  root to: 'welcome#index'
  get '/', to: 'welcome#index'
end
