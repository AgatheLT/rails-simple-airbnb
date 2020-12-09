# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating some flats...'
Flat.destroy_all

#4.times do
#  Flat.create(name: Faker::Coffee.blend_name,
#               address: Faker::Address.full_address,
#               description: Faker::Movies::Hobbit,
#               price_per_night: (Faker::Number.decimal(l_digits: 3, r_digits: 2)).to_i,
#               number_of_guests: (Faker::Number.decimal_part(digits: 2)).to_i
#               )
#end

flat1 = Flat.new(name: Faker::Coffee.blend_name,
               address: Faker::Address.full_address,
               description: Faker::Movies::Hobbit,
               price_per_night: (Faker::Number.decimal(l_digits: 3, r_digits: 2)).to_i,
               number_of_guests: (Faker::Number.decimal_part(digits: 2)).to_i
               )
file = URI.open('https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80')
flat1.photo.attach(io: file, filename: 'flat1.jpeg', content_type: 'image/jpeg')
flat1.save!

flat2 = Flat.new(name: Faker::Coffee.blend_name,
               address: Faker::Address.full_address,
               description: Faker::Movies::Hobbit,
               price_per_night: (Faker::Number.decimal(l_digits: 3, r_digits: 2)).to_i,
               number_of_guests: (Faker::Number.decimal_part(digits: 2)).to_i
               )
file = URI.open('https://images.unsplash.com/photo-1601312044126-06d550c15beb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
flat2.photo.attach(io: file, filename: 'flat2.jpeg', content_type: 'image/jpeg')
flat2.save!

flat3 = Flat.new(name: Faker::Coffee.blend_name,
               address: Faker::Address.full_address,
               description: Faker::Movies::Hobbit,
               price_per_night: (Faker::Number.decimal(l_digits: 3, r_digits: 2)).to_i,
               number_of_guests: (Faker::Number.decimal_part(digits: 2)).to_i
               )
file = URI.open('https://images.unsplash.com/photo-1565024144003-1e575b05564e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1789&q=80')
flat3.photo.attach(io: file, filename: 'flat3.jpeg', content_type: 'image/jpeg')
flat3.save!

puts 'Done! you have 3 new tiny Houses'
