# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create({
  first_name: 'Michael',
  last_name: 'Chen',
  date_of_birth: '10-02-1994'.to_date,
  occupation: 'Software Engineer',
  about: 'Hi there!',
  company: 'Square',
  school: 'UVA'
})
