class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :ingredients, through: :carted_products

  def update_totals
    calculated_price = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.ingredient.price
      # calculated_tax += carted_product.quantity * carted_product.ingredient.tax
    end
    calculated_total = calculated_subtotal + calculated_tax
    update(subtotal: calculated_subtotal, tax: calculated_tax, total: calculated_total)
  end
end
