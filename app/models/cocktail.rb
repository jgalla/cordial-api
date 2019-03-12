class Cocktail < ApplicationRecord
  has_many :ingredients, through: :cocktail_ingredient
end
