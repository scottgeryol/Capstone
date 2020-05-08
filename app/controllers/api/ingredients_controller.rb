class Api::IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
    render "index.json.jb"
  end

  def create
    @ingredient = Ingredient.new(
      name: params[:name],
    )
    if @ingredient.save
      render "show.json.jb"
    else
      render json: { errors: @recipe.errors.full_messages }, status: 422
    end
  end

  def show
    @ingredient = Ingredient.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.name = params[:name] || @ingredient.name
    if @ingredient.save
      render "show.json.jb"
    else
      render json: { errors: @recipe.errors.full_messages }, status: 422
    end
  end

  def destroy
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.destroy
    render json: { message: "Ingredient destroyed successfully!" }
  end
end
