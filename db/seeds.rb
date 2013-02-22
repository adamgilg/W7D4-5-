# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = Product.create([{ name: "Dog meat", price: 1200 },
                            { name: "Cat meat", price: 400 },
                            { name: "Baby elephant", price: 50000 }])
users = User.create([{ email: adam@example.com },
                      { email: sean@example.com }])
