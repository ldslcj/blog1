Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/pages', to:'pages#index', as: :pages
  get '/pages/new', to: 'pages#new'
  post '/pages', to:'pages#create'
  get '/pages/:id', to: 'pages#show'
  get '/tacos', to: 'pages#hotsauce'
  delete '/pages/:id', to:'pages#destroy'
  get '/pages/:id/edit', to:'pages#edit'
  put '/pages/:id', to: 'pages#update'
  patch '/pages/:id', to: 'pages#update'
end
