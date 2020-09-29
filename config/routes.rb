Rails.application.routes.draw do
  # resources :exerciselogs
  # resources :lifters
  # resources :exercises
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/exercises", to: "exercises#index", as: "exercises" #exercises_path
  get "/exercises/new", to: "exercises#new", as: "new_exercise" #exercises_path
  post "/exercises/", to: "exercises#create"
  get "/exercises/:id", to: "exercises#show", as: "exercise"
  get "/exercises/:id/edit", to: "exercises#edit", as: "edit_exercise"
  patch "/exercises/:id", to: "exercises#update"
  delete "/exercises/:id", to: "exercises#destroy"

  get "/exerciselogs", to: "exerciselogs#index"
  get"/exerciselogs/new", to: "exerciselogs#new"
  post "/exerciselogs/", to: "exerciselogs#create"
  get "/exerciselogs/:id", to: "exerciselogs#show", as: "exerciselog"
  get "/exerciselogs/:id/edit", to: "exerciselogs#edit"
  patch "/exerciselogs/:id", to: "exerciselogs#update"
  delete "/exerciselogs/:id", to: "exerciselogs#destroy"

  get"/lifters/", to: "lifters#index", as: "lifters"
  get"/lifters/new", to: "lifters#new", as: "new_lifter"
  post "/lifters/", to: "lifters#create"
  get "/lifters/:id", to: "lifters#show", as: "lifter"
  get "/lifters/:id/edit", to: "lifters#edit", as: "edit_lifter"
  patch "/lifters/:id", to: "lifters#update"
  delete "/lifters/:id", to: "lifters#destroy"


end
