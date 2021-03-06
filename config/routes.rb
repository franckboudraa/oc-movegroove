Rails.application.routes.draw do
  get 'logs/:id/new', to: 'logs#new', as: :new_log_entry
  resources :logs

  devise_for :users, controllers: {
      omniauth_callbacks: 'users/omniauth_callbacks',
      sessions: 'users/sessions'
  }

  resources :users, only: [:show, :update]

  get '/welcome', to: 'users#welcome', as: :welcome

  authenticated :user do
    root 'logs#index', as: :authenticated_root
  end

  root to: "static_pages#index"
end