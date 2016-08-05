Rails.application.routes.draw do
  get 'user/:id', to: "user#show"

  get 'statics/home'

  get 'statics/about'

  get 'statics/terms'

  get 'statics/contact'

  devise_for :users
  root to: "statics#home"
end
