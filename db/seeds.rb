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

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8CQc-dNUpP3byOSYxo9Hx1hxHLpRg1OmyAQ&usqp=CAU")
avatar4.photo.attach(io: file, filename: "tarzan.jpg", content_type: "image/jpg")

avatar5 = Avatar.new(name: "default")
avatar5.save!

file = URI.open("https://icon-library.com/images/no-image-icon/no-image-icon-0.jpg")
avatar5.photo.attach(io: file, filename: "default.jpg", content_type: "image/jpg")

puts "Creating users..."

user1 = User.new(email: "lishina@gmail.com", password: "123123", first_name: "Lishina", last_name: "Naoki")
user1.save!

puts "All done!"
