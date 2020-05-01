class Image < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe
end
