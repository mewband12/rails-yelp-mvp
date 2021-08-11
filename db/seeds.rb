# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "starting..."
Restaurant.destroy_all

10.times do 
  Restaurant.create(name: Faker::Book.title, address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone_in_e164, category: Restaurant::CATEGORY.sample) 
end
puts "Created #{Restaurant.count} restaurants"