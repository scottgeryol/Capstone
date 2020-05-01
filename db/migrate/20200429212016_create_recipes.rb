class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.string :directions
      t.string :notes
      t.integer :user_id
      t.string :image_url

      t.timestamps
    end
  end
end
