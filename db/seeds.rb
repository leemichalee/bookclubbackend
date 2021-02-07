# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

40.times do
    User.create(
        username: Faker::Internet.unique.username, 
        email: Faker::Internet.unique.email, 
        password: Faker::Internet.password,
        bio: Faker::Lorem.sentences(number: 10)
        )
end

club1 = Club.create(
    description: 'In this club we focus on reading books that would fit the horror genre. Join us if you want to be spooked!',
    genre: 'Horror',
    owner_id: 1,
    title: 'Horror Hags')

club2 = Club.create(
    description: 'Whether we can solve it before the book ends or not, we love to read mystery novels here! Join if you do too!!',
    genre: 'Mystery',
    owner_id: 10,
    title: 'Mystery Ministry')

club3 = Club.create(
    description: 'Delve into other worlds with us as we read fantasy novels every week!',
    genre: 'Fantasy',
    owner_id: 20,
    title: 'Fantasy Family')

50.times do
    Book.create(
        author: Faker::Book.unique.author,
        title: Faker::Book.unique.title,
        publisher: Faker::Book.publisher,
        genre: Faker::Book.genre
    )
end
