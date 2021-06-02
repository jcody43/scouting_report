Rails.application.routes.draw do
  get 'welcome/index'
  get '/new_player' => 'application#new_player'
  resources :players do
    resource :players, controller: 'players'
  end
  resources :players
    resources :players, only: [:new, :create]


end
