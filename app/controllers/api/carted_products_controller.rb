class Api::CartedProductsController < ApplicationController
  def index
    # @carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    # @carted_products = current_user.carted_products.where(status: "carted")\    @carted_products = current_user.shopping_cart
    @carted_products = current_user.shopping_cart
    render "index.json.jb"
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      ingredient_id: params[:ingredient_id],
      quantity: params[:quantity],
      status: "carted",
    )
    if @carted_product.save
      render "show.json.jb"
    else
      render json: { errors: @carted_product.errors.full_messages }, status: 422
    end
  end
end
