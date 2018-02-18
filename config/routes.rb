Rails.application.routes.draw do
  resources :activities

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :users, only: [:show]

  root to: "static_pages#homepage"
end
