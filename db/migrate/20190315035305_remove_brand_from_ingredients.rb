class RemoveBrandFromIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :ingredients, :brand, :text
  end
end
