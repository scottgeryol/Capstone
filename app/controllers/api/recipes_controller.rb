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
      user_id: current_user.id,
    )
    if @recipe.save
      render "show.json.jb"
    else
      render json: { errors: @recipe.errors.full_messages }, status: 422
    end
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.description = params[:description] || @recipe.description
    @recipe.directions = params[:directions] || @recipe.directions
    @recipe.prep_time = params[:prep_time] || @recipe.prep_time
    @recipe.notes = params[:notes] || @recipe.notes
    @recipe.image_url = params[:image_url] || @recipe.image_url
    if @recipe.save
      render "show.json.jb"
    else
      render json: { errors: @recipe.errors.full_messages }, status: 422
    end
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.destroy
    render json: { message: "Recipe destroyed successfully!" }
  end
end
