# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

romy = User.create!(first_name: 'Romy', last_name: 'Mag', password: 'jo', username: Faker::Name.unique.first_name )
jojo = Occupant.create!(first_name: 'Jo', last_name: 'Jo', relationship: 'Roommate', user_id: romy.id)
chore1 = Chore.create!(title: 'Dishes', complete: false, description: 'wash them dishes hoe', user_id: romy.id, occupant_id: jojo.id, due: DateTime.now)
chore2 = Chore.create!(title: 'Laundry', complete: false, description: 'wash them clothes hoe', user_id: romy.id, due: DateTime.now)
item1 = GroceryItem.create!(category: 'Food', name: 'snickers', user_id: romy.id)
item1 = GroceryItem.create!(category: 'Food', name: 'bojangles', user_id: romy.id)
item1 = GroceryItem.create!(category: 'Cleaning', name: 'fabuloso', user_id: romy.id)
item1 = GroceryItem.create!(category: 'General', name: 'swiffer', user_id: romy.id)

