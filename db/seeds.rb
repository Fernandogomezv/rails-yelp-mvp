# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
serafina = { name: 'La Serafina', address: 'Sol', category: 'italian', phone_number: '+34658384304' }
sun = { name: 'China Sun', address: 'Le Wagon Corner', category: 'chinese', phone_number: '+34658384304' }
sushiwaka = { name: 'Sushiwaka', address: 'Near Melia', category: 'japanese', phone_number: '+34658384304' }
petit = { name: 'Le Petit Prince', address: 'Madrid', category: 'french', phone_number: '+34658384304' }
frituur = { name: 'Frituur ', address: 'Harelbeke', category: 'belgian', phone_number: '+34658384304' }

[serafina, sun, sushiwaka, petit, frituur].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
