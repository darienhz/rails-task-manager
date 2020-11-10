Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  # get all tasks
  get '/tasks', to: 'tasks#index'
  # get one task
  get '/tasks/:id', to: 'tasks#show', as: :task
  # create a task
  get '/tasks/new', to: 'tasks#new'
  post '/tasks', to: 'tasks#create'
  # update task
  get '/tasks/:id/edit', to: 'tasks#edit'
  patch '/tasks/:id', to: 'tasks#update'
  # delete a task
  delete '/task:id', to: 'tasks#destroy'
end
