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

# Create Moana avatar
avatar_moana = Avatar.new(name: "moana")
avatar_moana.save!

file = URI.open("https://i2-prod.mylondon.news//article18152052.ece/ALTERNATES/s1200b/0_Moana.jpg")
avatar_moana.photo.attach(io: file, filename: "moana.jpg", content_type: "image/jpg")

# Create Pocahontas avatar

avatar_pocahontas = Avatar.new(name: "pocahontas")
avatar_pocahontas.save!

file = URI.open("https://disneyplusbrasil.com.br/wp-content/uploads/2022/12/Pocahontas-Disney-Plus.jpg")
avatar_pocahontas.photo.attach(io: file, filename: "pocahontas.jpg", content_type: "image/jpg")

# Create Mogli avatar

avatar_mogli = Avatar.new(name: "mogli")
avatar_mogli.save!

file = URI.open("https://akamai.sscdn.co/uploadfile/letras/fotos/0/e/7/d/0e7d7217fa288dfa95b4489344196ecd.jpg")
avatar_mogli.photo.attach(io: file, filename: "mogli.jpg", content_type: "image/jpg")

# Create Tarzan avatar

avatar_tarzan = Avatar.new(name: "tarzan")
avatar_tarzan.save!

file = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8CQc-dNUpP3byOSYxo9Hx1hxHLpRg1OmyAQ&usqp=CAU")
avatar_tarzan.photo.attach(io: file, filename: "tarzan.jpg", content_type: "image/jpg")

# Create Simba avatar

avatar_simba = Avatar.new(name: "simba")
avatar_simba.save!

file = URI.open("https://s1.eestatic.com/2018/08/27/social/humor-el_rey_leon-disney_333478673_94773643_1706x960.jpg")
avatar_simba.photo.attach(io: file, filename: "simba.jpg", content_type: "image/jpg")

# Create Ariel avatar

avatar_ariel = Avatar.new(name: "ariel")
avatar_ariel.save!

file = URI.open("https://www.historiaparadormir.com.br/wp-content/uploads/2020/03/Ariel.jpg")
avatar_ariel.photo.attach(io: file, filename: "ariel.jpg", content_type: "image/jpg")

# Create Default avatar

avatar_default = Avatar.new(name: "default")
avatar_default.save!

file = URI.open("https://icon-library.com/images/no-image-icon/no-image-icon-0.jpg")
avatar_default.photo.attach(io: file, filename: "default.jpg", content_type: "image/jpg")

puts "Creating users..."

user1 = User.new(email: "lishina@gmail.com", password: "123123", first_name: "Lishina", last_name: "Naoki")
user1.save!

puts "All done!"
