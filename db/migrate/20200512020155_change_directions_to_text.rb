class ChangeDirectionsToText < ActiveRecord::Migration[6.0]
  def change
    change_column :recipes, :directions, :text
  end
end
