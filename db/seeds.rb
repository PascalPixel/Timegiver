# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Users
[
  {email: 'pencil@superpencil.com', password: 'password', password_confirmation: 'password', admin: true},
  {email: 'admin@superpencil.com', password: 'password', password_confirmation: 'password', admin: true },
  {email: 'regular@superpencil.com', password: 'password', password_confirmation: 'password', admin: false }
].each do |u|
  user = User.find_by_email(u[:email])
  unless user
    User.create(u)
  end
end

# Teams
Team.delete_all
Team.create!([
  {
    description: "Amazingly fishy folks!",
    last_name: "Salmoncake",
    first_name: "Sammy",
    title: "Business Shark",
    rate: "6",
    currency_sign: "🐟",
    currency: "USD",
    company_name: "Salmon,
    Inc.",
    street_address_1: "Fishlane 88",
    street_address_2: "Aquarium 1",
    postal: "121212",
    city: "Tunaberg",
    country: "Sardinia",
    color: "FC7F6F"
  }
])
