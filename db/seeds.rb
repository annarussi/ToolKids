# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Cleaning database..."
User.destroy_all
Kid.destroy_all
Game.destroy_all

avatar1 = Avatar.new(name: "moana")
avatar1.save!

user1 = User.new(email: "lishina@gmail.com", password: "123123", first_name: "Lishina", last_name: "Naoki")
user1.save!
user2 = User.new(email: "naoki@gmail.com", password: "123123", first_name: "Naoki", last_name: "Naoki")
user2.save!

kid1 = Kid.new(nickname: "lichi", age: 5, avatar: avatar1, user: user1)
kid1.save!
kid2 = Kid.new(nickname: "naoki", age: 6, avatar: avatar1, user: user1)
kid2.save!

game1 = Game.new(name: "colors", level: 1, kid: kid1)
game1.save!

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Solid_blue.svg/2500px-Solid_blue.svg.png")
game1.photos.attach(io: file, filename: "blue.png", content_type: "image/png")

puts "No problem in cloudinary"


game2 = Game.new(name: "animals", level: 1, kid: kid1)
game2.save!
game3 = Game.new(name: "objects", level: 2, kid: kid2)
game3.save!
game4 = Game.new(name: "sounds", level: 2, kid: kid2)
game4.save!
