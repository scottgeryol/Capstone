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
    post "/ingredient_users" => "ingredient_users#create"

    get "/groceries" => "groceries#index"

    get "/carted_products" => "carted_products#index"
    post "/carted_products" => "carted_products#create"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    get "/recipesearch" => "recipesearch#index"

    get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: "public/index.html")]] }
  end
end
