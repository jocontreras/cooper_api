Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  namespace :api do
    namespace :v0 do
      resources :ping, only: [:index], constraints: { format: 'json' }
    end
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
      resources :performance_data, only: [:create]
      resources :performance_data, only: [:create, :index]  
    end
  end
end
