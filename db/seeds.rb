# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User.create(first_name: "Dallas", last_name: "")

User.create(first_name: "andy", last_name: "reyes", email: "areyes123@gmail.com")
User.create(first_name: "dallas", last_name: "bille", email: "dbille456@gmail.com")

NationalPark.create(name: "YellowStone")
NationalPark.create(name: "Shenadonah Park")

Trail.create(name: "long trail", description: "a very long pathway", national_park_id: 1)
Trail.create(name: "short trail", description: "a very short pathway", national_park_id: 2)

List.create(trail_id: 1, user_id: 1)
List.create(trail_id: 2, user_id: 2)

UserTrail.create(user_id: 1, trail_id: 1, rating: 3, review: "good")
UserTrail.create(user_id: 2, trail_id: 2, rating: 2, review: "bad")

# List.create(trail_id: 1, user_id: 1)
# List.create(trail_id: 2, user_id: 2)
