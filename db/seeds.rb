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
Avatar.destroy_all

puts "Creating avatars..."

avatar1 = Avatar.new(name: "moana")
avatar1.save!

file = URI.open("https://i2-prod.mylondon.news//article18152052.ece/ALTERNATES/s1200b/0_Moana.jpg")
avatar1.photo.attach(io: file, filename: "moana.jpg", content_type: "image/jpg")

avatar2 = Avatar.new(name: "pocahontas")
avatar2.save!

file = URI.open("https://disneyplusbrasil.com.br/wp-content/uploads/2022/12/Pocahontas-Disney-Plus.jpg")
avatar2.photo.attach(io: file, filename: "pocahontas.jpg", content_type: "image/jpg")

avatar3 = Avatar.new(name: "mogli")
avatar3.save!

file = URI.open("https://akamai.sscdn.co/uploadfile/letras/fotos/0/e/7/d/0e7d7217fa288dfa95b4489344196ecd.jpg")
avatar3.photo.attach(io: file, filename: "mogli.jpg", content_type: "image/jpg")

avatar4 = Avatar.new(name: "tarzan")
avatar4.save!

file = URI.open("https://i.pinimg.com/564x/36/42/6d/36426d0c1c186e3c0adece9416dad6ef.jpg")
avatar4.photo.attach(io: file, filename: "tarzan.jpg", content_type: "image/jpg")

puts "Creating users..."

user1 = User.new(email: "lishina@gmail.com", password: "123123", first_name: "Lishina", last_name: "Naoki")
user1.save!
user2 = User.new(email: "naoki@gmail.com", password: "123123", first_name: "Naoki", last_name: "Naoki")
user2.save!

puts "Creating kids..."

kid1 = Kid.new(nickname: "lichi", age: 5, avatar: avatar1, user: user1)
kid1.save!
kid2 = Kid.new(nickname: "naoki", age: 6, avatar: avatar1, user: user1)
kid2.save!

puts "Creating games..."

game1 = Game.new(name: "colors", level: 1, kid: kid1)
game1.save!

file = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224730/ci66vxhb0wpbexursb6m.png")
game1.photos.attach(io: file, filename: "blue.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224762/vs3k9plgsh2cclepgze8.png")
game1.photos.attach(io: file, filename: "yellow.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224779/pusmec8ipokomlwmmxqc.png")
game1.photos.attach(io: file, filename: "green.png", content_type: "image/png")

file = URI.open("https://res.cloudinary.com/dhku8hlz9/image/upload/v1686224795/y7dxvwjwh6j1xfsks1iw.png")
game1.photos.attach(io: file, filename: "red.png", content_type: "image/png")

puts "No problem in cloudinary"


game2 = Game.new(name: "animals", level: 1, kid: kid1)
game2.save!
game3 = Game.new(name: "objects", level: 2, kid: kid2)
game3.save!
game4 = Game.new(name: "sounds", level: 2, kid: kid2)
game4.save!

puts "All done!"
