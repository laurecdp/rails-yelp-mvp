# This file should contain all the record creation needed to seed the database with its default values.
require 'faker'

Restaurant.destroy_all

puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::Company.duns_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  restaurant.save!
end

puts 'Finished!'
