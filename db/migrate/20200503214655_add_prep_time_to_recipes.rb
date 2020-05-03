class AddPrepTimeToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :prep_time, :integer
  end
end
