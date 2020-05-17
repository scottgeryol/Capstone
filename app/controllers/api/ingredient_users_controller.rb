class Api::IngredientUsersController < ApplicationController
  def index
    @ingredient_users = IngredientUser.where(user_id: current_user)
    render "index.json.jb"
  end

  def create
    @ingredient_users = IngredientUser.new(
      ingredient: params[:ingredient],
    )
    render "show.json.jb"
  end
end
