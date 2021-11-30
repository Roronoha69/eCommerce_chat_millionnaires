# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

20.times do
  Item.create(
    title: Faker::Creature::Cat.name,
    description: Faker::Lorem.sentence(word_count: 15),
    price: Faker::Number.number(digits: 3)
  )
end

1.times do
  cart = Cart.create(
    user: User.all.sample
    
  )
end