# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
include Faker

# User ADMIN default
puts "Cadastrando ADMIN principal...."
User.create!(
  email: "admin@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

puts "Cadastrando PROFILE para ADMIN principal...."
UserProfile.create!(
  user_id: 1,
  birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
  gender: Faker::Gender.binary_type,
  profile: "driver",
  document: Faker::DrivingLicence.uk_driving_licence,
  car_model: Faker::Vehicle.model,
  name_car: Faker::Vehicle.manufacture,
  color_car: Faker::Color.color_name,
  board_car: Faker::Vehicle.license_plate,
  details: Faker::Movies::LordOfTheRings.location
)


puts "Cadastrando outros usuários..."

30.times do 
  User.create!(
    email: Faker::Internet.email,
    password: "12345678",
    password_confirmation: "12345678"
  )
end


profile = %w(rider driver)

User.all.each do |user|
  UserProfile.create!(
    user_id: user.id,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
    gender: Faker::Gender.binary_type,
    profile: profile.sample,
    document: Faker::DrivingLicence.uk_driving_licence,
    car_model: Faker::Vehicle.model,
    name_car: Faker::Vehicle.manufacture,
    color_car: Faker::Color.color_name,
    board_car: Faker::Vehicle.license_plate,
    details: Faker::Movies::LordOfTheRings.location
  )
end