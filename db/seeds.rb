# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
puts "Old data deleted"
#5.times do |i|
  doc1 = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Game.title)
  patient1 = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  puts "done"
  doc2 = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Game.title)
  patient2 = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  puts "done"
  doc3 = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, speciality: Faker::Game.title)
  patient3 = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  puts "done"
  puts "Liste rdv:"
  puts "rdv1 :doc1 et patient1"
  rdv1 = Appointment.create(doctor: doc1, patient: patient1)
  puts "rdv2 :doc2 et patient2"
  rdv2 = Appointment.create(doctor: doc2, patient: patient2)
  puts "rdv3 :doc3 et patient3"
  rdv2 = Appointment.create(doctor: doc3, patient: patient3)
  puts "rdv4 :doc2 et patient3"
  rdv2 = Appointment.create(doctor: doc2, patient: patient3)
  puts "rdv5 :doc1 et patient3"
  rdv2 = Appointment.create(doctor: doc1, patient: patient3)
  puts "done"




