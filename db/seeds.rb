# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
City.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
puts "Old data deleted"
paris = City.create(name: "Paris")
nice = City.create(name: " Nice")
3.times do
  City.create(name: Faker::Games::SuperSmashBros.stage)
end
  sitter1 = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city: paris)
  sitter2 = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city: nice)
  sitter3 = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city: paris)
  7.times do
    sitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,city: paris)
  end
puts " dogsitters done"
  dog1 = Dog.create!(name:"Nihilus le dévoreur de mondes",city: paris)
  dog2 = Dog.create!(name: Faker::Name.first_name,city: nice)
  dog3 = Dog.create!(name: Faker::Name.first_name,city: paris)
  7.times do
    dog = Dog.create!(name: Faker::Name.first_name,city: paris)
  end

  puts "Stroll1 : Dog 'sitter1' et dog1"
  stroll1 = Stroll.create!(dogsitter: sitter1,dog: dog1)
  puts "Stroll2 : Dog 'sitter2' et dog2"
  stroll2 = Stroll.create!(dogsitter: sitter2,dog: dog2)
  puts "Stroll3 : Dog 'sitter3' et dog3"
  stroll3 = Stroll.create!(dogsitter: sitter3,dog: dog3)
  puts "Stroll4 : Dog 'sitter2' et dog1"
  stroll4 = Stroll.create!(dogsitter: sitter2,dog: dog1)
  puts "Stroll5 : Dog 'sitter2' et dog3"
  stroll5 = Stroll.create!(dogsitter: sitter2,dog: dog3)
  puts "Stroll6 : Dog 'sitter3' et dog1"
  stroll6 = Stroll.create!(dogsitter: sitter3,dog: dog1)

