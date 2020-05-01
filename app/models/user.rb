class User < ApplicationRecord
  has_secure_password

  has_many :recipeUsers
  has_many :recipes, through: :recipeUser
  has_many :ingredientRecipes
  has_many :ingredients, through: :ingredientRecipe
  has_many :groceries
  has_many :recipes, through: :groceries
end
