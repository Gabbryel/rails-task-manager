Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index", as: :index
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"
  patch "task/:id", to: "tasks#update"
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#delete"
end
