Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'tasks', to: 'tasks#index'

  #CREATE
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  #READ
  get "tasks/:id", to: "tasks#show", as: :task

  #UPDATE
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task # see the form
  patch "tasks/:id", to: "tasks#update" # submit the form

  #DELETE
  delete "tasks/:id", to: "taskss#destroy"

end
