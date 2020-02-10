# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |_i|
  name = Faker::Artist.name + ' ' + Faker::Dessert.variety
  desc = Faker::GreekPhilosophers.quote
  color = 'rgb(' + [Random.rand(256), Random.rand(256), Random.rand(256)].join(',') + ')'
  Boat.create(name: name, description: desc, color: color)
end
