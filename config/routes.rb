Rails.application.routes.draw do
  # get 'images/new', to: "images#new"

  # get 'images/create', to: "images#create"

  # get 'images/destroy', to: "images#destroy"

  devise_for :users
  resources :projects, :users, :versions, :images
  get 'about', to: "statics#about"
  get 'terms', to: "statics#terms"
  get 'contact', to: "statics#contact"
  root to: "statics#home"
end
