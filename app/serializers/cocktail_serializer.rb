class CocktailSerializer < ActiveModel::Serializer
  attributes :id, :name, :instructions

  def qty
    binding.pry
    object.cocktail_ingredients.qty
  end
end
