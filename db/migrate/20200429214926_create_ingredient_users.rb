class CreateIngredientUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_users do |t|
      t.integer :ingredient_id
      t.integer :user_id

      t.timestamps
    end
  end
end
