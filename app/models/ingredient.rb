class Ingredient < ApplicationRecord
  has_many :ingredient_users
  has_many :users, through: :ingredient_users
  has_many :ingredient_recipes
  has_many :recipes, through: :ingredient_recipes
  has_many :images
  has_many :carted_products
  has_many :orders, through: :carted_products
end
