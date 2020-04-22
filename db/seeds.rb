# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 0..20
  User.create(email: Faker::Internet.email,
              password: Faker::Internet.password)
end

for i in 0..50
  toy = Toy.create(name: Faker::Game.title, 
                   description: Faker::Lorem.words(number: 30).join(" "), 
                   date: Faker::Date.backward(days: 14), 
                   user_id: rand(21),
                   manufacturer_id: rand(5))
end

for i in 0...5
  manufacturer = Manufacturer.create(name: Faker::Game.title, location: Faker::Address.city)
end