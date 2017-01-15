Rails.application.routes.draw do
  get 'home/index'

  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  resources :session, only: [:new, :create, :destroy]

  get '/signing', to: 'session#new'
  get '/signout', to: 'session#destroy'

  resources :usuarios
  resources :mensajes
end
