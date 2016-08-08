Rails.application.routes.draw do
  devise_for :users
  resources :projects, :users, :versions, :images, :comments
  get 'about', to: "statics#about"
  get 'terms', to: "statics#terms"
  get 'contact', to: "statics#contact"
  root to: "statics#home"
end
