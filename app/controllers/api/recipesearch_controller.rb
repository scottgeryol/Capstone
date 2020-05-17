class Api::RecipesearchController < ApplicationController
  def index
    response = HTTP.get("https://api.edamam.com/search")
  end
end
