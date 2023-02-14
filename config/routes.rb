Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  # http_verb '/path', to: 'controller#action', as: :prefix
  # prefixes only belong to the path (does NOT include the http_verb)

  # READ ALL
  get '/tasks', to: 'tasks#index', as: :tasks
  # CREATE
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'
  # READ ONE
  get '/tasks/:id', to: 'tasks#show', as: :task
  # UPDATE
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # DELETE
  delete '/tasks/:id', to: 'tasks#destroy'
end
