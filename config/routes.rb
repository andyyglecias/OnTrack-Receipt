Rails.application.routes.draw do
  namespace :api do

    get "/users" => "users#create"
    post "/users" => "users#create"
    delete "/users/:id" => "users#destroy"
    


    post "/sessions" => "sessions#create"

    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"
    post "/categories" => "categories#create"
    patch "/categories/:id" => "categories#update"
    delete "/categories/:id" => "categories#destroy"

    get "/sendtexts" => "receipts#sendtext"
    get "/receipts" => "receipts#index"
    get "/receipts/:id" => "receipts#show"
    patch "/receipts/:id" => "receipts#update"
    post "/receipts" => "receipts#create"
    delete "/receipts/:id" => "receipts#destroy"


    get "/categoryusers" => "categoryusers#index"
    get "/categoryusers/:id" => "categoryusers#show"
    patch "/categoryusers/:id" => "categoryusers#update"
  end
end
