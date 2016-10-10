# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Board.destroy_all
Pin.destroy_all
Comment.destroy_all

User.create([
  { email: 'lizafloyd@gmail.com', username: 'lizafloyd', password: 'password1'},
  { email: 'awhitley@gmail.com', username: 'awhitley', password: 'password2'}
])

Board.create([
  {topic: 'books', user_id: 1},
  {topic: 'movies', user_id: 2}
])

Pin.create([
  {title: 'To Read', board_id: 1, image_url: 'http://www.thorntonlibrary.org/Stack%20Books.jpg'},
  {title: 'To Watch', board_id: 2, image_url: 'http://images.huffingtonpost.com/2015-12-16-1450300622-8118374-Star_Wars.png'}
])
