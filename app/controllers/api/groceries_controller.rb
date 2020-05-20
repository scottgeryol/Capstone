class Api::GroceriesController < ApplicationController
  def index
    @groceries = current_user.groceries
    render "index.json.jb"
  end
end
