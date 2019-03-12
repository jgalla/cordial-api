class CreateCocktailIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :cocktail_ingredients do |t|
      t.references :ingredient, foreign_key: true
      t.string :cocktail_references

      t.timestamps
    end
  end
end
