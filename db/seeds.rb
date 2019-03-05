# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(first_name: "andy", last_name: "reyes", email: "areyes123@gmail.com")
User.create(first_name: "dallas", last_name: "bille", email: "dbille456@gmail.com")
User.create(first_name: "john", last_name: "doe", email: "johndoe@gmail.com")
User.create(first_name: "jane", last_name: "dame", email: "janedame@gmail.com")

NationalPark.create(name: "YellowStone", state: "Wyoming", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_270324281.jpg")
NationalPark.create(name: "Grand Canyon", state: "Arizona", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_167691545.jpg")
NationalPark.create(name: "Yosemite", state: "California", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_243001456.jpg")
NationalPark.create(name: "Shenandoah Park", state: "Virginia", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_492051079.jpg")

Trail.create(name: "long trail", description: "a very long pathway", miles: 35, national_park_id: 1)
Trail.create(name: "short trail", description: "a very short pathway", miles: 2, national_park_id: 2)

UserTrail.create(user_id: 1, trail_id: 1, rating: 3, review: "good")
UserTrail.create(user_id: 2, trail_id: 2, rating: 2, review: "bad")
UserTrail.create(user_id: 3, trail_id: 1, rating: 5, review: "meh")

List.create(trail_id: 1, user_id: 1)
List.create(trail_id: 2, user_id: 2)
