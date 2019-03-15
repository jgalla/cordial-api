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

# Ingredient.delete_all
# Cocktail.delete_all
# CocktailIngredient.delete_all

Ingredient.create(
  [{ ingredient_name: 'gin', checked_status: false },
   { ingredient_name: 'whiskey', checked_status: false },
   { ingredient_name: 'vodka', checked_status: false }]
)
Cocktail.create(
  [{ name: 'Glass of gin', instructions: 'It pours the gin into the glass.' },
   { name: 'Glass of vodka', instructions: 'You know what to do.' }]
)
CocktailIngredient.create(
  [{ ingredient_id: Ingredient.first.id, cocktail_id: Cocktail.first.id, qty: '1 glass' },
   { ingredient_id: Ingredient.last.id, cocktail_id: Cocktail.last.id, qty: '.5 cups' },
   { ingredient_id: Ingredient.first.id, cocktail_id: Cocktail.last.id, qty: '.75 cups' }]
)

puts 'data seeded'
# puts Ingredient.where(ingredient_name: 'gin')
