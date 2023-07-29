Rails.application.routes.draw do
  #user
  get '/users', to: 'users#index'
  
  get '/users/new', to: 'users#new', as: 'new_user'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'

  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to:'users#destroy', as: 'destroy_user'

  #status
  get '/statuses', to: 'statuses#index'
  get '/statuses/new', to: 'statuses#new', as: 'new_status'
  get '/statuses/:id', to: 'statuses#show', as: 'status'
  post '/statuses', to: 'statuses#create'

  get '/statuses/:id/edit', to: 'statuses#edit', as: 'edit_status'
  patch '/statuses/:id', to: 'statuses#update'
  delete '/statuses/:id', to:'statuses#destroy', as: 'destroy_status'




  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
