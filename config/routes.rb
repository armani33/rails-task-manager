Rails.application.routes.draw do
  # CRUD

  # CREATE

  get '/tasks/new', to: 'tasks#new'

  post '/tasks', to: 'tasks#create'
  # READ

  # 1. List all the tasks
  get '/tasks', to: 'tasks#index'

  # 2. view details about a particular tasks
  get '/tasks/:id', to: 'tasks#show', as: :task

  # UPDATE

  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  #DELETE

  delete 'tasks/:id', to: 'tasks#destroy', as: :delete
end
