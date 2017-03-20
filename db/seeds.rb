# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

date = Date.new(0004, 01, 01);

while date <= Date.parse('0004-12-31') do
  Day.create(date: date);
  date = date.tomorrow;
end

User.create!(name:  "Admin",
             email: "admin@railstutorial.org",
             password:              "adminpwd",
             password_confirmation: "adminpwd",
             admin: true)

5.times do
  pass = Faker::Internet.password(min_length = 8, max_length = 16)
  User.create(name: Faker::Name.name,
              email: Faker::Internet.unique.email,
              password: pass,
              password_confirmation: pass)
end