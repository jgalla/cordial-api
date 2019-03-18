class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :ingredient_name, :checked_status, :user_id
end
