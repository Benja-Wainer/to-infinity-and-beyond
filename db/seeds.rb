require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# puts "Destroying all users"
# User.destroy_all
# puts "Done!"

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

puts "Making trevor user"
user = User.create!(
  username: "Trevor",
  email: "trevor@trevor.com",
  password: "123456",
)

puts "Making Bowman user"
user = User.create!(
  username: "Bowman",
  email: "Bowman@bowman.com",
  password: "123456",
)

# puts "Destroying all jetpacks"
# Jetpack.destroy_all
# puts "Done!"

# 10.times do
jetpack = Jetpack.new(
  title: "Helicopter from Hell",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Ride like a helicopter...from hell",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1689997098/helicopter-jetpack_slntzl.webp")
jetpack.photo.attach(io: file, filename: "helicopter.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "Miami Style",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Fly around like a dolphin straight out of Miami beach",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1689997098/miami-special_giar9n.jpg")
jetpack.photo.attach(io: file, filename: "miami.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "Advanced Warfighter Jetpack",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Ever played Call of Duty Advanced warfighter?",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1689997086/advanced-jetpack_ofpgqi.jpg")
jetpack.photo.attach(io: file, filename: "advanced.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "The Squatter",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Sit down, relax, and fly with this jetpack!",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1689997086/sitting-jetpack_cm9yil.jpg")
jetpack.photo.attach(io: file, filename: "squatter.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"


jetpack = Jetpack.new(
  title: "Water Glider",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Ariel said she wanted human legs. This will make her wish she had fins again",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1689997086/water-jetpack_lpes1y.jpg")
jetpack.photo.attach(io: file, filename: "footer.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "El Classico",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "A jetpack. What else could you want?",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1689997086/classic-jetpack_ifmkfx.webp")
jetpack.photo.attach(io: file, filename: "classic.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "Mando",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Baby Yoda would be proud",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1690003889/mando_ckt07b.jpg")
jetpack.photo.attach(io: file, filename: "mando.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "The Falcon",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Have so much fun you'll forget how bad Falcon and the Winter soldier was",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1690596005/falcon_jetpack_roqasg.jpg")
jetpack.photo.attach(io: file, filename: "falcon.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "The Original Infinity",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Make Woody jealous with this jetpack made to make you reconnect with your youth!",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1690607107/and_beyond_flehua.webp")
jetpack.photo.attach(io: file, filename: "infinity.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "The Not a Jetpack Jetpack",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "With great power comes great Jetpacks",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1690607107/not_a_jetpack_jetpack_qcqzdf.jpg")
jetpack.photo.attach(io: file, filename: "docock.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "The Space Junky",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "This Jetpack is out of this world...",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1690607109/space_jetpck_hfx4yy.jpg")
jetpack.photo.attach(io: file, filename: "space.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"

jetpack = Jetpack.new(
  title: "The Gas Guzzler",
  model: Faker::Science.tool,
  price: rand(100.300),
  description: "Punch mother nature in the face with a jetpack meant burn through gas like a wildfire in california",
  user_id: rand(1..5)
)
file = URI.open("https://res.cloudinary.com/dm54zi0ff/image/upload/v1690607108/gas_guzzler_kvzs6x.jpg")
jetpack.photo.attach(io: file, filename: "gasguzzler.png", content_type: "image/png")
jetpack.save
puts "Creating jetpack number #{jetpack.id}"
