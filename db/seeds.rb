# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Destroying all jetpacks"
Jetpack.destroy_all
puts "Done!"

puts "Creating first jetpack"
Jetpack.create!(
  title: "Jetpack 1",
  model: "Fly-o-Matic 3000",
  price: 150,
  description: "Some description",
  user_id: 1
)
puts "Creating second jetpack"
Jetpack.create!(
  title: "Jetpack 2",
  model: "The Burninator",
  price: 100,
  description: "Another description",
  user_id: 1
)
puts "Creating third jetpack"
Jetpack.create!(
  title: "Jetpack 3",
  model: "Red Comet",
  price: 200,
  description: "A final description",
  user_id: 1
)
