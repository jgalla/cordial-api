# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rails db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ingredient.delete_all
Cocktail.delete_all
CocktailIngredient.delete_all

Ingredient.create([{ ingredient_name: 'gin' }, { ingredient_name: 'vodka' }])
Cocktail.create(name: 'Glass of gin', instructions: 'It pours the gin into the glass.')

CocktailIngredient.create(ingredient_id: Ingredient.first.id, cocktail_id: Cocktail.first.id)

puts 'data seeded'
# puts Ingredient.where(ingredient_name: 'gin')
