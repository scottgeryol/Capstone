class CartedProduct < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  belongs_to :order, optional: true
end
