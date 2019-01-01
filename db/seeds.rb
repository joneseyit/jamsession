# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"
Session.delete_all

jerry = Session.create(title: 'Jam', time: 0700, location: "9th west", description: "Need a bass and a vocalist")
10.times do
  walker = Session.create(title: Faker::GameOfThrones.character, time: 0700, location: Faker::GameOfThrones.city, description: Faker::Yoda.quote)
end
