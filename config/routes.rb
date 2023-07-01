Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # read all
  get 'tasks', to: 'tasks#index', as: 'tasks'
  # display task form to create new
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  # read one
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # handle POST request when creating
  post 'tasks', to: 'tasks#create'
  # update
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'
  # destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
