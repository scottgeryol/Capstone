class CreateCartedProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :carted_products do |t|
      t.integer :user_id
      t.integer :ingredient_id
      t.string :status
      t.integer :order_id

      t.timestamps
    end
  end
end
