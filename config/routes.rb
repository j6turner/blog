Rails.application.routes.draw do
  root :to => 'home#index'

  resources :users
  resources :posts

  get "/users/:user_id/posts/new" => "posts#new"
  get "/log-in" => "sessions#new"
  post "log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

end
