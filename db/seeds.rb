# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meal.destroy_all
MealCategory.destroy_all
pizza = MealCategory.create(name: "Pizza")

marga = Meal.new(name: 'margarita', ingredient: 'tomate, fromage', meal_category: pizza, price_cents: 700)
marga.remote_photo_url = "http://www.academiabarilla.com/anteprima_pizzamargherita_xhm1p-2_1200.jpg?h=faa3bae42d7180a508c490395249247ded3f362c"
marga.save

fromage = Meal.new(name: '4 frommage', ingredient: 'tomate, chèvre, bleu, emmental, mozzarella', meal_category: pizza, price_cents: 900)
fromage.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSG2apwzlf-wi27rPcBXNZFuBHBCac31vFA03MLSHWie32X-iEl4Q"
fromage.save

calzone = Meal.new(name: 'calzone', ingredient: 'tomate,oignon, jambon, champignons, créme, fromage, oeuf', meal_category: pizza, price_cents: 1000)
calzone.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEa-AC_vt2zncro1rWRIWgjSsJGFuHJ6FxyFYnW4W5EZSvRO8PzA"
calzone.save

pasta = MealCategory.create(name: "Pâte")

carbo = Meal.new(name: 'carbonara', ingredient: 'crème, lardons, champignons, oignons, parmesan, oeuf', meal_category: pasta, price_cents: 800)
carbo.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5hLW6wktoDW8AawBij8a-RPBdxIgF93fN1U18PLcBm9OMDTeZmA"
carbo.save

bolo = Meal.new(name: 'bolo', ingredient: 'sauce tomate, viande hachée°, champignons, oignons, parmesan', meal_category: pasta, price_cents: 800)
bolo.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6LQkgQM2PEBIJnMGhBeDEa3ez8lElrKdJnIoQBHvV7grEbODy"
bolo.save

saumon = Meal.new(name: 'saumon', ingredient: 'crème citronnée, saumon°, basilic séché, parmesan', meal_category: pasta, price_cents: 800)
saumon.remote_photo_url = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTP4NPOenLZ-znGKaGYW2rSLyUSz_562YO-nMe7DFpnmP_M7gIQVw"
saumon.save

dessert = MealCategory.create(name: "Dessert")

tiramisu = Meal.new(name: 'Tiramisu', ingredient: '', meal_category: dessert, price_cents: 500)
tiramisu.remote_photo_url = "http://www.pizza2buch.fr/Files/131040/Img/12/TIRAMISU.jpg"
tiramisu.save

crumble = Meal.new(name: 'Crumble', ingredient: '', meal_category: dessert, price_cents: 500)
crumble.remote_photo_url = "http://www.pizza2buch.fr/Files/131040/Img/02/crumble-rhubarbe.jpg"
crumble.save

dame_blanche = Meal.new(name: 'Dame blanche', ingredient: '', meal_category: dessert, price_cents: 500)
dame_blanche.remote_photo_url = "http://www.pizza2buch.fr/Files/131040/Img/12/2110-Z15.png"
dame_blanche.save
