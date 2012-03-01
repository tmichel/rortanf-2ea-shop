# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |i|
  Product.create(name: "termek#{i+1}", price: rand(1000)+1, stock: rand(10))
end

Product.create([
  { name: 'sulyos termek', price: 10, stock: 2 },
  { name: 'konnyu termek', price: 20, stock: 1 },
  { name: 'muzli', price: 50, stock: 30 }
])

p1 = Product.limit(3)
p2 = Product.limit(4)
p3 = Product.limit(5)
p4 = Product.limit(2)

User.create([
  {name: 'Kiss Bela', products: p1 },
  {name: 'Szel Peter', products: p2 },
  {name: 'Teszt Elek', products: p3 },
  {name: 'Fulig Jimmy', products: p4 },
  {name: 'Piszkos Fred, a kapitany' }
])

Product.all.each do |p|
  p.reviews.create(content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", score: rand(5)+1, user: User.find(rand(3)+1) )
end


