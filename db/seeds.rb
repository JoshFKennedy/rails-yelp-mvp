puts "cleaning database"
Restaurant.destroy_all
puts 'database is clean'

puts 'creating restaurants'
100.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Faker::Food.ethnic_category
  )
  puts "restaurant #{restaurant.id} is created"
end

puts "Done"
