class CocktailIngredientSerializer < ActiveModel::Serializer
  attributes :id, :qty
  has_one :ingredient
  has_one :cocktail
end
