Rails.application.routes.draw do
  get 'welcome/index'
  get '/new_post' => 'application#new_post'
  resources :players do
    resource :players, controller: 'players'
  end

  resources :articles do
    resources :comments
    resources :description
    root 'welcome#index'


end
  end