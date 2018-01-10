# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Reply.destroy_all
dev = User.create!(
  email: "sgilmore@michael-sean.com",
  first_name: "Sean",
  last_name: "Gilmore",
  credentials: "Developer",
  state: "GA",
  phone_number: "123-456-7890",
  password: "123456",
  admin: true,
  active: true
)