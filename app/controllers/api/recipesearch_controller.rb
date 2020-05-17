class Api::RecipesearchController < ApplicationController
  def index
    response = HTTP
      .headers({
        "Authorization" => "Bearer #{Rails.application.credentials.capstone_api[:api_key]}",
      })
      .get("https://api.edamam.com/search?q=#{params[:query]}&app_id=75bee0ea&app_key=#{capstone_api[:api_key]}&from=0&to=3&calories=591-722&health=alcohol-free").parse
    recipe_search = response.parse
    render json: recipe_search
  end
end

"https://api.edamam.com/search?q=#{params[:query]}&app_id=75bee0ea&app_key=#{capstone_api[:api_key]}&from=0&to=3&calories=591-722&health=alcohol-free"
