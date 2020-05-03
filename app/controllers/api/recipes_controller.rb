class Api::RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render "index.json.jb"
  end

  def create
    @recipe = Recipe.new(
      description: params[:description],
      directions: params[:directions],
      prep_time: params[:prep_time],
      notes: params[:notes],
      image_url: params[:image_url],
    )
    @recipe.save
    render "show.json.jb"
  end
end
