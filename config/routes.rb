Rails.application.routes.draw do
  #User Actions
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  post "/users" => "users#create"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  #Login Session
  post "/sessions" => "sessions#create"

  #Rig Actions
  get "/rigs" => "rigs#index"
  get "/rigs/:id" => "rigs#show"
  post "/rigs" => "rigs#create"
  delete "/rigs/:id" => "rigs#destroy"

  #Message Actions
  get "/messages" => "messages#index"
  get "/messages/:id" => "messages#show"
  post "/messages" => "messages#create"
  patch "/messages/:id" => "messages#update"
  delete "/messages/:id" => "messages#destroy"
end
