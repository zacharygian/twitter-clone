# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Tweet.destroy_all

User.create!(username: "johndoe", first_name: "John" , last_name: "Doe", age: "25", avatar: Rails.root.join("app/assets/images/doe.jpg").open, email: 'doe@example.com', password: "password")
User.create!(username: "johnappleseed", first_name: "John" , last_name: "Appleseed", age: "22", avatar: Rails.root.join("app/assets/images/appleseed.jpg").open, email: 'appleseed@example.com', password: "password")
User.create!(username: "chrissmith", first_name: "Chris" , last_name: "Smith", age: "34", avatar: Rails.root.join("app/assets/images/smith.jpg").open, email: 'smith@example.com', password: "password")
User.create!(username: "candacebreedlove", first_name: "Candace" , last_name: "Breedlove", age: "26", avatar: Rails.root.join("app/assets/images/candace.jpg").open, email: 'candace@example.com', password: "password")
User.create!(username: "rita_l", first_name: "Rita" , last_name: "Love", age: "37", avatar: Rails.root.join("app/assets/images/rita.jpg").open, email: 'rital@example.com', password: "password")
User.create!(username: "maggieishere", first_name: "Maggie" , last_name: "Beasley", age: "28", avatar: Rails.root.join("app/assets/images/maggie.jpg").open, email: 'maggieb@example.com', password: "password")
User.create!(username: "zacharygian18", first_name: "Zachary" , last_name: "Gian", age: "23", avatar: Rails.root.join("app/assets/images/gian.jpg").open, email: 'zachg@example.com', password: "password")

Tweet.create!(content: "Great game tonight, I'm glad we won!" , user_id: 1, created_at: DateTime.new(2018, 5, 02))
Tweet.create!(content: "This platform is pretty cool." , user_id: 1, created_at: DateTime.new(2018, 5, 01))

Tweet.create!(content: "I wish I was in Tokyo! I really miss the city to be honest..." , user_id: 2, created_at: DateTime.new(2018, 5, 02))
Tweet.create!(content: "My friends are always traveling, maybe one day I'll go with them." , user_id: 2, created_at: DateTime.new(2018, 5, 03))
Tweet.create!(content: "My phone just fell on the floor, good thing I had a screen protector!!" , user_id: 2, created_at: DateTime.new(2018, 5, 06))

Tweet.create!(content: "This year will be a good one for me!" , user_id: 3, created_at: DateTime.new(2018, 5, 03))
Tweet.create!(content: "I have a lot of things to do but I'm here on Twitter..." , user_id: 3, created_at: DateTime.new(2018, 4, 28))

Tweet.create!(content: "I'm always on Twitter because this platform is so good!" , user_id: 4, created_at: DateTime.new(2018, 5, 05))
Tweet.create!(content: "I met a lot of cool people on here." , user_id: 4, created_at: DateTime.new(2018, 5, 04))

Tweet.create!(content: "Hey everyone, I'm new to the platform! How is it going?" , user_id: 4, created_at: DateTime.new(2018, 4, 17))
Tweet.create!(content: "I have to run errands today... ugh..." , user_id: 4, created_at: DateTime.new(2018, 5, 05))

Tweet.create!(content: "For those who are developers, do you prefer Atom or Sublime?" , user_id: 5, created_at: DateTime.new(2018, 4, 25))
Tweet.create!(content: "I just love coding everyday!" , user_id: 5, created_at: DateTime.new(2018, 5, 02))

Tweet.create!(content: "I love walking around in the city, especially at night!" , user_id: 6, created_at: DateTime.new(2018, 4, 26))
Tweet.create!(content: "My co-worker is the best, she brings me coffee every morning!" , user_id: 6, created_at: DateTime.new(2018, 4, 27))

Tweet.create!(content: "Hey guys! I'm new to this platform, any advice?" , user_id: 7, created_at: DateTime.new(2018, 5, 04))
Tweet.create!(content: "I really enjoy watching basketball, and love playing too!" , user_id: 7, created_at: DateTime.new(2018, 5, 02))
Tweet.create!(content: "Just came back from Shinjuku, this place is amazing!!" , user_id: 7, created_at: DateTime.new(2018, 5, 06))

