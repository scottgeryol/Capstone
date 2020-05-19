class Api::RecipesearchController < ApplicationController
  def index
    response = HTTP
      .get("https://api.edamam.com/search?q=#{params[:query]}&app_id=75bee0ea&app_key=#{Rails.application.credentials.capstone_api[:api_key]}&from=0&to=3&calories=591-722&health=alcohol-free")
    recipe_search = response.parse
    render json: recipe_search
  end
end
