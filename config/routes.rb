Rails.application.routes.draw do
  get "notes/index"
  get "notes/new"
  get "notes/create"
  get "users/new"
  get "users/create"
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
