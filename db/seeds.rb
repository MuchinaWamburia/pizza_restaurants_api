# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'


# restaurants.rb

puts "🌱 Seeding restaurants..."

# Create 10 restaurants
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address
  )
end


# pizzas.rb

puts "🌱 Seeding pizzas..."

# Create 20 pizzas
20.times do
  Pizza.create(
    name: Faker::Food.dish,
    ingredients: Faker::Food.ingredient
  )
end


# restaurant_pizzas.rb

puts "🌱 Seeding restaurant_pizzas..."
# Assign random pizzas to random restaurants with random prices
Restaurant.all.each do |restaurant|
  Pizza.all.each do |pizza|
    RestaurantPizza.create(
      price: rand(5.0..20.0),
      restaurant_id: restaurant.id,
      pizza_id: pizza.id
    )
  end
end

puts "✅ Done seeding!"