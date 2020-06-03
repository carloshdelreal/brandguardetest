# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Users"
User.create!( email: 'carlos@email.com',
              password: 'foobar',
              password_confirmation: 'foobar')

User.create!( email: 'antonio@email.com',
              password: 'foobar',
              password_confirmation: 'foobar')

User.create!( email: 'angie@email.com',
              password: 'foobar',
              password_confirmation: 'foobar')

Country.create(name: 'Colombia')
Country.create(name: 'Brazil')
Country.create(name: 'United States')
Country.create(name: 'Germany')

Chain.create(chain_name: 'chineese')
Chain.create(chain_name: 'japaneese')
Chain.create(chain_name: 'italian')
Chain.create(chain_name: 'mediterranean')