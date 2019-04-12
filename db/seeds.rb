# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Pizza.destroy_all
Base.destroy_all
tomate = Base.create(name: "sauce tomate")
creme = Base.create(name: "crême fraiche")

marga = Pizza.new(name: 'margarita', ingredient: ['tomate', 'fromage'], base: tomate, price_cents: 700)
marga.remote_photo_url = "http://www.academiabarilla.com/anteprima_pizzamargherita_xhm1p-2_1200.jpg?h=faa3bae42d7180a508c490395249247ded3f362c"
marga.save
