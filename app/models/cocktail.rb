class Cocktail < ApplicationRecord
  has_many :cocktail_ingredient
  has_many :ingredients, through: :cocktail_ingredient
end
