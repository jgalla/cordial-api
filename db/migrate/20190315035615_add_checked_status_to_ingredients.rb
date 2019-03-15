class AddCheckedStatusToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :checked_status, :boolean
  end
end
