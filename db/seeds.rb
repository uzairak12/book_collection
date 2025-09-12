# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create!([
  {
    title: "The Life of a Turtle",
    author: "Shell",
    price: 19.99,
    date_published: Date.new(2020, 5, 12)
  },
  {
    title: "The Mirror, the Lion and the Audacity of the Little Pig",
    author: "Feather",
    price: 24.50,
    date_published: Date.new(2021, 8, 3)
  },
  {
    title: "Origami for Cats",
    author: "Whiskers",
    price: 12.75,
    date_published: Date.new(2019, 11, 20)
  },
  {
    title: "The Weight of a Hundred Kilograms",
    author: "DrNewton",
    price: 15.00,
    date_published: Date.new(2022, 2, 14)
  },
])