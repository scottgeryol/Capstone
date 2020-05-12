class Api::GroceriesController < ApplicationController
  def index
    @groceries = current_user.shopping_cart
    render "index.json.jb"
  end
end
