Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'tasks#index'
  # index
  get 'tasks', to: 'tasks#index'
  # as renames things
  get 'tasks/new', to: 'tasks#new', as: "new"
  post '/tasks', to: 'tasks#create'
  # Make sure to keep new on top of id
  get 'tasks/:id', to: 'tasks#show', as: "show"
  # Edit page
  get '/tasks/:id/edit', to: 'tasks#edit', as: "edit"
  #
  patch 'tasks/:id', to: 'tasks#update'

  # resources: tasks
end
