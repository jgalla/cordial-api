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

ingredient_list =
  %w[gin whiskey vodka tequila mezcal sweet\ vermouth campari bourbon rye
     bitters lime\ juice]

ingredient_list.each do |ingredient|
  Ingredient.create(ingredient_name: ingredient, checked_status: false)
end

# Ingredient.create(
#   [{ ingredient_name: 'gin', checked_status: false },
#    { ingredient_name: 'whiskey', checked_status: false },
#    { ingredient_name: 'vodka', checked_status: false },
#    { ingredient_name: 'tequila', checked_status: false },
#    { ingredient_name: 'mezcal', checked_status: false },
#    { ingredient_name: 'sweet vermouth', checked_status: false },
#    { ingredient_name: 'campari', checked_status: false },
#    { ingredient_name: 'bourbon', checked_status: false },
#    { ingredient_name: 'rye', checked_status: false },
#    { ingredient_name: 'bitters', checked_status: false },
#    { ingredient_name: 'lime juice', checked_status: false },
#    { ingredient_name: 'agave', checked_status: false }]
# )

cocktail_list =
  []

Cocktail.create(
  [{ name: 'Boulevardier', instructions: 'Stir with ice and strain into glass.' },
   { name: 'Manhattan', instructions: 'Stir with ice and strain into glass.' },
   { name: 'Margarita', instructions: 'Add ingredients to shaker. Shake then strain into glass.' },
   { name: 'Negroni', instructions: 'Stir with ice and strain into glass.' },
   { name: 'Mezcal Margarita', instructions: 'Add ingredients to shaker. Shake then strain into glass.' },
   { name: 'Glass of whiskey', instructions: 'Pour into glass.' },
   { name: 'Boulevardier', instructions: 'Stir with ice and strain into glass.' },
   { name: 'Manhattan', instructions: 'Stir with ice and strain into glass.' },
   { name: 'Margarita', instructions: 'Add ingredients to shaker. Shake then strain into glass.' },
   { name: 'Negroni', instructions: 'Stir with ice and strain into glass.' },
   { name: 'Mezcal Margarita', instructions: 'Add ingredients to shaker. Shake then strain into glass.' },
   { name: 'Glass of whiskey', instructions: 'Pour into glass.' }]
)
CocktailIngredient.create(
  [{ cocktail_id: 1, ingredient_id: 7, qty: '1 oz' },
   { cocktail_id: 1, ingredient_id: 8, qty: '1 oz' },
   { cocktail_id: 1, ingredient_id: 6, qty: '1 oz' },
   { cocktail_id: 2, ingredient_id: 9, qty: '2 oz' },
   { cocktail_id: 2, ingredient_id: 6, qty: '1 oz' },
   { cocktail_id: 2, ingredient_id: 10, qty: '2 dashes' },
   { cocktail_id: 3, ingredient_id: 4, qty: '2 oz' },
   { cocktail_id: 3, ingredient_id: 11, qty: '1 oz' },
   { cocktail_id: 3, ingredient_id: 12, qty: '1 tsp' },
   { cocktail_id: 4, ingredient_id: 1, qty: '1 oz' },
   { cocktail_id: 4, ingredient_id: 6, qty: '1 oz' },
   { cocktail_id: 4, ingredient_id: 7, qty: '1 oz' },
   { cocktail_id: 5, ingredient_id: 5, qty: '1 oz' },
   { cocktail_id: 5, ingredient_id: 4, qty: '1 oz' },
   { cocktail_id: 5, ingredient_id: 11, qty: '1 oz' },
   { cocktail_id: 5, ingredient_id: 12, qty: '1 tsp' },
   { cocktail_id: 6, ingredient_id: 2, qty: '2 oz' },
   { cocktail_id: 7, ingredient_id: 7, qty: '1 oz' },
   { cocktail_id: 7, ingredient_id: 8, qty: '1 oz' },
   { cocktail_id: 7, ingredient_id: 6, qty: '1 oz' },
   { cocktail_id: 8, ingredient_id: 9, qty: '2 oz' },
   { cocktail_id: 8, ingredient_id: 6, qty: '1 oz' },
   { cocktail_id: 8, ingredient_id: 10, qty: '2 dashes' },
   { cocktail_id: 9, ingredient_id: 4, qty: '2 oz' },
   { cocktail_id: 9, ingredient_id: 11, qty: '1 oz' },
   { cocktail_id: 9, ingredient_id: 12, qty: '1 tsp' },
   { cocktail_id: 10, ingredient_id: 1, qty: '1 oz' },
   { cocktail_id: 10, ingredient_id: 6, qty: '1 oz' },
   { cocktail_id: 10, ingredient_id: 7, qty: '1 oz' },
   { cocktail_id: 11, ingredient_id: 5, qty: '1 oz' },
   { cocktail_id: 11, ingredient_id: 4, qty: '1 oz' },
   { cocktail_id: 11, ingredient_id: 11, qty: '1 oz' },
   { cocktail_id: 11, ingredient_id: 12, qty: '1 tsp' },
   { cocktail_id: 12, ingredient_id: 2, qty: '2 oz' }]
)

puts 'data seeded'
# puts Ingredient.where(ingredient_name: 'gin')
# Ingredient.where(ingredient_name: 'gin').select(:id).first.id
