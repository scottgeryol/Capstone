Rails.application.routes.draw do
  namespace :api do
    get "/recipes" => "recipes#index"
    post "/recipes" => "recipes#create"
    get "/recipes/:id" => "recipes#show"
    patch "/recipes/:id" => "recipes#update"
    delete "/recipes/:id" => "recipes#destroy"

    get "/ingredients" => "ingredients#index"
    post "/ingredients" => "ingredients#create"
    get "/ingredients/:id" => "ingredients#show"
    patch "/ingredients/:id" => "ingredients#update"
    delete "/ingredients/:id" => "ingredients#destroy"

    get "/ingredient_users" => "ingredient_users#index"

    get "/groceries" => "groceries#index"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
