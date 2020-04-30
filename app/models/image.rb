class Image < ApplicationRecord
  belongs_to :ingredients
  belings_to :recipe
end
