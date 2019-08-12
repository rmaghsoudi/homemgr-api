# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

romy = User.create!(first_name: 'Romy', last_name: 'Mag', password: '123', username: "romy" )
jojo = Occupant.create!(first_name: 'Romelius', last_name: 'Jr', relationship: 'Roommate', user_id: romy.id)
chore1 = Chore.create!(title: 'Dishes', complete: false, description: 'clean all dishes thoroughly and tidy up the countertop', user_id: romy.id, occupant_id: jojo.id, due: DateTime.now)
chore1 = Chore.create!(title: 'Get Groceries', complete: true, description: 'we need fishsticks', user_id: romy.id, occupant_id: Occupant.first.id, due: DateTime.now)
chore1 = Chore.create!(title: 'Clean Living Room', complete: false, description: 'sweep and mop the floor, then vacuum the carpet', user_id: romy.id, occupant_id: jojo.id, due: DateTime.now)
chore1 = Chore.create!(title: 'Water the cactus', complete: true, description: 'pretty self explanatory', user_id: romy.id, occupant_id: Occupant.first.id, due: DateTime.now)
chore2 = Chore.create!(title: 'Laundry', complete: false, description: 'wash and dry all of the dark clothes', user_id: romy.id, occupant_id: Occupant.first.id, due: DateTime.now)
5.times do
   GroceryItem.create!(category: 'Fresh Produce', title: Faker::Food.fruits, user_id: romy.id, image: "http://lorempixel.com/200/200", quantity: 1)
end
5.times do
  GroceryItem.create!(category: 'Fresh Produce', title: Faker::Food.vegetables, user_id: romy.id, image: "http://lorempixel.com/200/200", quantity: 2)
end
item1 = GroceryItem.create!(category: 'Cleaning', title: 'Fabuloso', user_id: romy.id, image: "http://lorempixel.com/200/200", quantity: 4)
item2 = GroceryItem.create!(category: 'Cleaning', title: 'Chlorox Wipes', user_id: romy.id, image: "http://lorempixel.com/200/200", quantity: 2)
item3 = GroceryItem.create!(category: 'Cleaning', title: 'Window Cleaner', user_id: romy.id, image: "http://lorempixel.com/200/200", quantity: 5)



