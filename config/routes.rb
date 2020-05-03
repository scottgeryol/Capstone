Rails.application.routes.draw do
  namespace :api do
    get "/recipes" => "recipes#index"
    post "/recipes" => "recipes#create"
  end
end
