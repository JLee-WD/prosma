Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'items#index'
  get "/items", to: "items#index", as: "items"
  post "/items", to: "items#create"
  get "/items/new", to: "items#new", as: "new_item"
  get "/items/:id", to: "items#show", as: "item"
  get "/users/:id", to: "users#show", as: "user"
  put "/items/:id", to: "items#update"
  patch "/items/:id", to: "items#update"
  delete "/items/:id", to: "items#destroy"
  get "/items/:id/edit", to: "items#edit", as: "edit_item"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
