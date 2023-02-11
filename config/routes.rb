Rails.application.routes.draw do
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"

  #Login Session
  post "/sessions" => "sessions#create"
end
