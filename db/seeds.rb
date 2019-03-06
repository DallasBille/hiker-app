# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create(first_name: "andy", last_name: "reyes", email: "areyes123@gmail.com", username:"andy",password_digest: "")
# User.create(first_name: "dallas", last_name: "bille", email: "dbille456@gmail.com", username: "dallas",password_digest: "")
# User.create(first_name: "john", last_name: "doe", email: "johndoe@gmail.com", username: "john",password_digest: "")
# User.create(first_name: "jane", last_name: "dame", email: "janedame@gmail.com", username: "jane",password_digest: "")
require 'faker'

NationalPark.create(name: "YellowStone", state: "Wyoming", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_270324281.jpg")
NationalPark.create(name: "Grand Canyon", state: "Arizona", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_167691545.jpg")
NationalPark.create(name: "Yosemite", state: "California", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_243001456.jpg")
NationalPark.create(name: "Shenandoah Park", state: "Virginia", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_492051079.jpg")
NationalPark.create(name: "Rocky Mountain", state: "Colorado", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_208574035.jpg")
NationalPark.create(name: "Crater Lake", state: "Oregon", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_371403733.jpg")
NationalPark.create(name: "Zion National Park", state: "Utah", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_631695836.jpg")
NationalPark.create(name: "Olympic National Park", state: "Washington", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_57039646.jpg")
NationalPark.create(name: "Grand Teton National Park", state: "Wyoming", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_160744148.jpg")
NationalPark.create(name: "Glacier National Park", state: "Montana", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_299880356.jpg")
NationalPark.create(name: "Bryce Canyon National Park", state: "Utah", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_334574972.jpg")
NationalPark.create(name: "Sequoia National Park", state: "California", img_url: "https://cdn.thecrazytourist.com/wp-content/uploads/2017/10/ccimage-shutterstock_439243948.jpg")

10.times do
Trail.create(name: "#{Faker::Movies::Lebowski.unique.character} Trail", description: Faker::TvShows::MichaelScott.unique.quote, miles: rand(1..50), national_park_id: NationalPark.all.sample.id)
end





# UserTrail.create(user_id: 1, trail_id: 1, rating: 3, review: "good")
# UserTrail.create(user_id: 2, trail_id: 2, rating: 2, review: "bad")
# UserTrail.create(user_id: 3, trail_id: 1, rating: 5, review: "meh")

# List.create(trail_id: 1, user_id: 1)
# List.create(trail_id: 2, user_id: 2)
