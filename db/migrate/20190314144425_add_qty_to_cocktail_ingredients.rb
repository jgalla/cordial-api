class AddQtyToCocktailIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktail_ingredients, :qty, :string, references: nil
  end
end
