# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'french' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian' }
xing_ling =  { name: 'Xing Ling', address: '56A Shoreditch High St, London E1 6PQ', category: 'chinese' }
taka_kara_nomuro = { name: 'Taka Kara Nomuro', address: 'Sakura fields, Montreal H3P 2C8', category: 'japanese' }
monastery_pub =  { name: 'Monastery', address: '77D Nice Beer St, BG 6PQ', category: 'belgian' }

[dishoom, pizza_east, xing_ling, taka_kara_nomuro, monastery_pub].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
