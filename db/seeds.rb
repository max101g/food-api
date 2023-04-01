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

    Post.create(image:"https://bit.ly/40Pvrjt", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/42Ufp9Q", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/42ZcAUK", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3zoxJdv", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3TZUzle", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3zjTL1f", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3ZCvWMG", location:Faker::Address.city)
    Post.create(image:"https://cnn.it/3M8d3yf", location:Faker::Address.city)
    Post.create(image:"https://cnn.it/3M6IMja", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/42XApwj", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/40vz2Dj", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3M8xnzA", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3JVKpNY", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/42UeHcC", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3ZCwYZ4", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3M2E3PA", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3m6gJpk", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/40Tavb8", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/42UI0Mf", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/40RjaLf", location:Faker::Address.city)
    Post.create(image:"https://bit.ly/3nBsqF7", location:Faker::Address.city)

20.times do
    Userpost.create(
        user_id:Faker::Number.within(range: 1..20),
        post_id:Faker::Number.within(range: 1..20)
    )
end

puts "Done seeding... ✅"
