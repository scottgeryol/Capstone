class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :url
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
