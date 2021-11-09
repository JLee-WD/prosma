Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  get "/items", to: "items#index", as: "items"
  post "/items", to: "items#create"
  get "/items/new", to: "items#new"
  get "/items/:id", to: "items#show", as: "item"
  put "/items/:id", to: "items#update"
  delete "/items/:id", to: "items#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
