class Ingredient < ApplicationRecord
  has_many :ingredientUser
  has_many :users, through: :ingredientUser
  has_many :ingredientRecipe
  has_many :recipes, through: :ingredientRecipe
  has_many :recipeUser
  has_many :images
end
