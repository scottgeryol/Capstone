class Grocery < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient
  belongs_to :order
  belongs_to :supplier
end
