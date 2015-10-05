Rails.application.routes.draw do
  root to: "todos#index"
  resources :todos, only: [:create, :new, :index]
  resource :session, only: [:create, :new]
end
