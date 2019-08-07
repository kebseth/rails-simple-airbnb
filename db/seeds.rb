# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |flat|
  flat = Flat.new(
    name: Faker::Kpop.boy_bands,
    address: Faker::Address.city,
    description: Faker::Lorem.paragraph,
    price_per_night: rand(30..120),
    number_of_guests: rand(1..10)
  )
  flat.save
end
puts "created"
