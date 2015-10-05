Rails.application.routes.draw do
  root to: "todos#index"
  resources :todos, only: [:create, :new, :index] do
    resource :completion, only: [:create, :destroy]
  end
  resource :session, only: [:create, :new]
end
