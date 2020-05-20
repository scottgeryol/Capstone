class Order < ApplicationRecord
  belongs_to :user
  has_many :carted_products
  has_many :ingredients, through: :carted_products
end
