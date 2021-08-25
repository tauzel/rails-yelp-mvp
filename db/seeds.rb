# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require_relative '../app/models/restaurant'

# Cleaning mock database
puts "Deleting existing instances of Restaurants"
Restaurant.destroy_all
# should also delete all reviews

puts "Creating 5 new restaurants, each with 5 reviews"
5.times do
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    category: VALID_REST_CATEGORIES.sample
  )
  restaurant.save!
  5.times do
    puts "Creating 5 reviews for #{restaurant.name}"
    review = Review.new(
      rating: (0..5).to_a.sample,
      content: Faker::ChuckNorris.fact,
      restaurant_id: restaurant.id
    )
    review.save!
    puts review.content
  end
end
