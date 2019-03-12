class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :ingredient_name
      t.text :brand

      t.timestamps
    end
  end
end
