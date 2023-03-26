# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seeding... 🌱"
20.times do
    User.create(
        name:Faker::Name.name,
        username:Faker::Internet.username,
        email:Faker::Internet.email,
        password_digest:Faker::Internet.password,
        image:Faker::Avatar.image
    )
end 

20.times do
    Post.create(
        image:Faker::LoremFlickr.image,
        location:Faker::Address.city
    )
end

20.times do
    Userpost.create(
        user_id:Faker::Number.within(range: 1..20),
        post_id:Faker::Number.within(range: 1..20)
    )
end

puts "Done seeding... ✅"
