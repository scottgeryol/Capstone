class Recipe < ApplicationRecord
  belongs_to :user
  belongs_to :ingredients
  has_many :recipeUser
  has_many :ingredientUser
  has_many :ingredientRecipe
  has_many :users, through: :RecipeUser
  has_many :ingredients, through: :IngredientRecipe
  has_many :images
end
