# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating seeds.."
Ingredient.create(name: "mango")
Ingredient.create(name: "papaya")
Ingredient.create(name: "lemon")
Ingredient.create(name: "thyme")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "bringbær juice")
Ingredient.create(name: "whiskey")
Ingredient.create(name: "vodka")
Ingredient.create(name: "rum")
Ingredient.create(name: "ice cubes")
Ingredient.create(name: "vanilla")

puts "Seeding finished!"
