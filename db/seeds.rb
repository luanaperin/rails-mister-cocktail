# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'


Cocktail.destroy_all

cocktail_name = []
20.times do
  cocktail_name << Faker::Pokemon.name
end
cocktail_names = cocktail_name.uniq

cocktail_names.each do |pokemon|
  Cocktail.create!(name: pokemon)
end


url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

json = open(url).read
hash = JSON.parse(json)
Ingredient.destroy_all

ingredients = hash['drinks']
ingredients.each do |ingredient|

  Ingredient.create!(name: ingredient['strIngredient1'])

end


20.times do
  description = (0..20).to_a.sample
  Dose.create!(description: description, ingredient_id: Ingredient.all.sample.id, cocktail_id: Cocktail.all.sample.id)
end
