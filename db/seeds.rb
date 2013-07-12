# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create! name: "Andrew K",
	email: "a@gmail.com"

Product.create! name: "Moon Boots",
	description: "Walk on the moon",
	price_in_cents: "140000"

Product.create! name: "Moon shorts",
	description: "Walk on moon in style",
	price_in_cents: "80000"
