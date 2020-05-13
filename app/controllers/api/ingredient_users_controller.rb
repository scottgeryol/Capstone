class Api::IngredientUsersController < ApplicationController
  def index
    @ingredient_users = IngredientUser.all
    render "index.json.jb"
  end
end
