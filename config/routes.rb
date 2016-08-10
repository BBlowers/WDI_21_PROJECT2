Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: :registrations}
  resources :projects do
    resources :versions do
      resources :comments, :images
    end
  end
  resources :users
  get 'about', to: "statics#about"
  get 'terms', to: "statics#terms"
  get 'contact', to: "statics#contact"
  root "statics#home"
end
