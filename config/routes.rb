Rails.application.routes.draw do
  namespace :api do
    get "/recipes" => "recipes#index"
  end
end
