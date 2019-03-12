class CocktailIngredientSerializer < ActiveModel::Serializer
  attributes :id
  has_one :ingredient
  has_one :cocktail
end
