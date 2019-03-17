Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post 'signup', to: 'users#create'
      get 'login', to: 'sessions#new'
      post 'login', to: "sessions#create"
      delete 'logout', to: "sessions#destroy"

      resources :users, only: [:create, :show, :index] do
        get 'players', to: 'user_players#index'
        get 'leagues', to: 'league_users#index'
        post 'leagues', to: 'league#create'
        delete 'players/:id', to: 'user_players#destroy'
      end

      resources :leagues, only: [:create, :update, :destroy, :show] do
        get 'users', to: 'league_users#index'
        post 'users/:user_id/players/:player_id', to: 'league_user_players#create'
      end

      resources :player_stats, only: [:index]
      resources :countrys, only: [:index, :show]
    end
  end
end
