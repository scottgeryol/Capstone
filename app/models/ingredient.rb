class Ingredient < ApplicationRecord
  has_many :ingredientUsers
  has_many :users, through: :ingredientUsers
  has_many :ingredientRecipes
  has_many :recipes, through: :ingredientRecipe
  has_many :recipeUsers
  has_many :images
end
