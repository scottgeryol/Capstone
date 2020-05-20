class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :recipeUsers
  has_many :recipes, through: :recipeUser
  has_many :ingredientRecipes
  has_many :ingredients, through: :ingredientUser
  has_many :ingredients, through: :ingredientRecipe
  has_many :groceries
  has_many :recipes, through: :groceries
  has_many :orders
  has_many :carted_products
end
