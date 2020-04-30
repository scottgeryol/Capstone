class CreateGroceries < ActiveRecord::Migration[6.0]
  def change
    create_table :groceries do |t|
      t.string :status
      t.integer :user_id
      t.integer :ingredient_id
      t.integer :quantity
      t.integer :order_id
      t.string :supplier_id
      t.integer :sutotal
      t.integer :tax
      t.integer :total

      t.timestamps
    end
  end
end
