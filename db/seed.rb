require 'faker'
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
puts "Old data deleted"
10.times do |i|
  user = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name speciality: Faker::Game.title)
  user = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  puts "done #{i} times"
end
