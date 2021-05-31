Rails.application.routes.draw do
  get 'welcome/index'
  get '/new_post' => 'application#new_post'
end
