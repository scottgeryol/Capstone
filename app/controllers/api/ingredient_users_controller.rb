class Api::IngredientUsersController < ApplicationController
  def index
    @ingredient_users = IngredientUser.where(user_id: current_user)
    render "index.json.jb"
  end

  def create
    @ingredient_user = IngredientUser.new(
      ingredient_id: params[:ingredient_id],
      user_id: current_user.id,
    )
    @ingredient_user.save
    render "show.json.jb"
  end
end
