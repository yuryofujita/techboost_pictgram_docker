Rails.application.routes.draw do
  get 'users/new'

  get 'pages/index'
  get 'pages/help'
  get 'users/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
end
