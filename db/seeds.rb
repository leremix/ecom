# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

20.times do
  Product.create(
  title: Faker::Cat.name,
  description: Faker::Lorem.paragraph(2),
  price: Faker::Number.decimal(2)
)
end

a = Admin.create
a.email = "admin@admin.com"
a.password = "123456"
a.save

puts "#{a.email} saved"
