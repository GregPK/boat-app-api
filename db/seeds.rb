# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.create(id: 1, name: 'Admin', email: 'adminboat@example.org', password: 'password', password_confirmation: 'password')
other = User.create(id: 2, name: 'Other user', email: 'other@example.org', password: 'password', password_confirmation: 'password')
_empty = User.create(id: 3, name: 'Boatless', email: 'boatless@example.org', password: 'password', password_confirmation: 'password')

Boat.destroy_all
6.times do |i|
  name = Faker::Artist.name + ' ' + Faker::Dessert.variety
  desc = Faker::GreekPhilosophers.quote
  color = 'rgb(' + [Random.rand(256), Random.rand(256), Random.rand(256)].join(',') + ')'
  user = i.even? ? admin : other
  Boat.create(name: name, description: desc, color: color, user: user)
end
