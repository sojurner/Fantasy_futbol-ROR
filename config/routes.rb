Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'signup', to: 'users#create'
      get 'login', to: 'sessions#new'
      post 'login', to: "sessions#create"
      delete 'logout', to: "sessions#destroy"
      resources :users, only: [:create] do
        get 'players', to: 'user_players#index'
        post 'players', to: 'players#create'
        get 'leagues', to: 'league_users#index'
        post 'leagues', to: 'league#create'
        delete 'players/:id', to: 'user_players#destroy'
      end

      resources :leagues, only: [:create] do
        get 'users', to: 'league_users#index'
        post 'users', to: 'users#create'
        delete 'users', to: 'users#destroy'
      end

      resources :players, only: [:index]
    end
  end
end
