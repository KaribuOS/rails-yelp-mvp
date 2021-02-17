# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database..."
Restaurant.destroy_all
puts 'creating restaurants'
kfc = { name: "Kentucky Fried Chicken", address: "Pagenstecher Straße 36, 49090 Osnabrueck", phone_number:"0541-12341", category:"belgian"}
mcd = { name: "McDonalds", address: "Pagenstecher Straße 54, 49090 Osnabrueck", phone_number:"0541-12342", category:"french"}
bk = { name: "Burger King", address: "Pagenstecher Straße 58, 49090 Osnabrueck", phone_number:"0541-12343", category:"italian"}
subway = { name: "Subway Sandwiches", address: "Pagenstecher Straße 42, 49090 Osnabrueck", phone_number:"0541-12344", category:"japanese"}
bulldog = { name: "Bulldog - Burgers and Beer", address: "Pagenstecher Straße 60, 49090 Osnabrueck", phone_number:"0541-12345", category:"chinese"}

[ kfc, mcd, bk, subway, bulldog ].each do |a|
  restaurant = Restaurant.create!(a)
  puts "Created #{restaurant.name}"
end
puts "finished!"
