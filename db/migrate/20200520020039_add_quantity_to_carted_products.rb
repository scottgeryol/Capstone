class AddQuantityToCartedProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :carted_products, :quantity, :integer
  end
end
