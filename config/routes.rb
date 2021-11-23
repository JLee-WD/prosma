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
  delete "/items/:id", to: "items#destroy", as: "destroy_item"
  get "/items/:id/edit", to: "items#edit", as: "edit_item"

  get "/payments/success", to: "payments#success"

  get "/admins/dash", to: "admins#index", as: "admin_index"

  get "/cart", to: "carts#show", as: "cart"
  post "/cart/:id", to: "carts#create", as: "add_to_cart"
  delete "/cart/:id", to: "carts#destroy", as: "destroy_cart_item"
end
