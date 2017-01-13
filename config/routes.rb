Rails.application.routes.draw do
  resources :usuarios do 
  	resources :chats
  resources :mensajes
end
