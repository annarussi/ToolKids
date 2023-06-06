# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Kid.destroy_all
Game.destroy_all

User1 = User.create(email:"lishina@gmail.com", password: "111111")

Kid1 = Kid.create(nickname:"lichi", age: 5)
Kid2 = Kid.create(nickname:"naoki", age: 6)

Game1 = Game.create(name:"colours", level: 1)
Game2 = Game.create(name:"animals", level: 2)
Game3 = Game.create(name:"objects", level: 3)
Game4 = Game.create(name:"sounds", level: 4)
