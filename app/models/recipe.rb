class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_users
  has_many :users, through: :recipe_users
  has_many :ingredient_recipes
  has_many :ingredients, through: :ingredient_recipes
end
