class Recipe < ApplicationRecord
  belongs_to :user
  # belongs_to :ingredient
  has_many :recipeUsers
  has_many :ingredientUsers
  has_many :ingredientRecipes
  has_many :users, through: :RecipeUser
  has_many :ingredients, through: :ingredientRecipe
  # has_many :images
end
