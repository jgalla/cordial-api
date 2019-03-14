class Ingredient < ApplicationRecord
  has_many :cocktail_ingredient
  has_many :users, through: :ingredient_user
  has_many :cocktails, through: :cocktail_ingredient
end
