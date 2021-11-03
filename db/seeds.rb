# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Dish.create(food: "Stuffing", category: "Main Dish", vegetarian: false, gluten_free: false)
Dish.create(food: "Deviled Eggs", category: "Side Dish", vegetarian: true, gluten_free: true)
Dish.create(food: "Pecan Pie", category: "Main Dish", vegetarian: true, gluten_free: true)
Dish.create(food: "Jesse's Turkey", category: "Side Dish", vegetarian: true, gluten_free: true)

Holiday.create(name: "Christmas", month: 12, day: 25)
Holiday.create(name: "Thanksgiving", month: 11, day: 26)


