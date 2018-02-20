Rails.application.routes.draw do
  resources :activities

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  resources :users, only: [:show, :update]

  get '/welcome', to: 'users#welcome', as: :welcome

  authenticated :user do
    root 'dashboard#index', as: :authenticated_root
  end

  root to: "static_pages#index"
end
