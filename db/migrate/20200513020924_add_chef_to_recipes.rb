class AddChefToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :chef, :string
  end
end
