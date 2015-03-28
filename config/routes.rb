Rails.application.routes.draw do
  root :to => 'home#index'

  resources :users do
    resources :posts
  end

  get "/log-in" => "sessions#new"
  post "log-in" => "sessions#create"
  get "/log-out" => "sessions#destroy", as: :log_out

end
