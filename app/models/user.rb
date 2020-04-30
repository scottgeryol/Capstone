class User < ApplicationRecord
  has_many :recipeUser
  has_many :recipes, through: :recipeUser
  has_many :ingredientRecipe
  has_many :ingredients, through: :ingredientRecipe
  has_many :groceries
  has_many :recipes, through: :grocery_bags
end
