# for each category of the array CATEGORY = %w(chinese italian japanese french belgian) do
# create a category of the current CATEGORY
# create a Restrautent where the category is the category just created
require 'faker'
categories = %w(chinese italian japanese french belgian)


Restaurant.destroy_all

puts "Creating Restaurants"

10.times do
  resto = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample
  )
  puts "Created #{resto.name}"
end

puts "Created #{Restaurant.count} restaurants"
