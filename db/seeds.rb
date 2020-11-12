# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating some flats...'
Flat.destroy_all

4.times do
  Flat.create(name: Faker::Artist.name,
               address: Faker::Games::SuperMario.location,
               description: Faker::Coffee.notes,
               price_per_night: Faker::Number.decimal(l_digits: 3, r_digits: 2),
               number_of_guests: Faker::Number.decimal_part(digits: 2))
end

puts 'Done! you have 4 new flats'
