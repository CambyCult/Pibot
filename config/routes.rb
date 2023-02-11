Rails.application.routes.draw do
  #User Actions
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  #Login Session
  post "/sessions" => "sessions#create"
end
