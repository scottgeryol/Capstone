class RecipeUser < ApplicationRecord
  belongs_to :recipes
  belongs_to :users
end
