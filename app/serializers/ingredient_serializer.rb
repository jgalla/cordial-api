class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :ingredient_name, :brand, :users, :cocktails
end
