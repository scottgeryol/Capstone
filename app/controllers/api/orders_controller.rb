class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  def create
    @order = Order.new(
      user_id: current_user.id,
    )
    if @order.save
      carted_products = current_user.shopping_cart
      carted_products.update_all(status: "purchased", order_id: @order.id)
      @order.update_totals
      render "show.json.jb"
    else
      render json: { errors: @order.errors.full_messages }, status: 422
    end
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])
    render "show.json.jb"
  end
end
