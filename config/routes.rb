Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/pages', to:'pages#index', as: :pages
  get '/pages/:id', to: 'pages#show'
  get '/tacos', to: 'pages#hotsauce'
  delete '/pages/:id', to:'pages#destroy'
end
