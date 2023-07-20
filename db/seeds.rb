# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying all users"
User.destroy_all
puts "Done!"

puts "Creating 5 users"
5.times do
  user = User.create!(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: "123456",
  )
  puts "User #{user.username} has been created"
end
puts "Finished seeding users"


puts "Destroying all jetpacks"
Jetpack.destroy_all
puts "Done!"

10.times do
  jetpack = Jetpack.create!(
    title: Faker::Superhero.name,
    model: Faker::Science.tool,
    price: rand(100.300),
    description: "Exciting jetpack description",
    user_id: rand(1..5)
  )
  puts "Creating jetpack number #{jetpack.id}"
end
puts "Finished seeding jetpacks"
