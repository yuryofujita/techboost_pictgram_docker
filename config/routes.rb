Rails.application.routes.draw do
  Rails.logger.debug("#########ルートの中に入りました。########")
  get 'sessions/new'

  get 'pages/index'
  get 'pages/help', to: 'pages#help'
  resources :users
  resources :topics

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get 'favorites/index'
  post '/favorites', to: 'favorites#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
