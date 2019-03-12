class CocktailSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions, :ingredients
end
