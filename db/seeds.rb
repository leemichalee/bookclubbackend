# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)
require 'faker'

10.times do
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
    owner_id: 5,
    title: 'Fantasy Family')

50.times do
    Book.create(
        author: Faker::Book.unique.author,
        title: Faker::Book.unique.title,
        publisher: Faker::Book.publisher,
        genre: Faker::Book.genre
    )
end

membership1 = Membership.create(user_id: 1, club_id: 1)
membership2 = Membership.create(user_id: 2, club_id: 1)
membership3 = Membership.create(user_id: 3, club_id: 1)
membership4 = Membership.create(user_id: 4, club_id: 1)
membership5 = Membership.create(user_id: 5, club_id: 1)
membership6 = Membership.create(user_id: 6, club_id: 1)
membership7 = Membership.create(user_id: 7, club_id: 1)
membership8 = Membership.create(user_id: 8, club_id: 1)
membership9 = Membership.create(user_id: 9, club_id: 1)
membership10 = Membership.create(user_id: 10, club_id: 1)
membership11 = Membership.create(user_id: 10, club_id: 2)
membership12 = Membership.create(user_id: 5, club_id: 3)
membership13 = Membership.create(user_id: 1, club_id: 2)
membership14 = Membership.create(user_id: 1, club_id: 3)
membership15 = Membership.create(user_id: 2, club_id: 2)
membership16 = Membership.create(user_id: 3, club_id: 2)
membership17 = Membership.create(user_id: 4, club_id: 2)
membership18 = Membership.create(user_id: 5, club_id: 2)
membership19 = Membership.create(user_id: 6, club_id: 3)
membership20 = Membership.create(user_id: 7, club_id: 3)
membership21 = Membership.create(user_id: 2, club_id: 3)
membership22 = Membership.create(user_id: 6, club_id: 2)
membership23 = Membership.create(user_id: 8, club_id: 3)
membership24 = Membership.create(user_id: 9, club_id: 3)

clubbook1 = Clubbook.create(club_id:1, book_id: 22)
clubbook2 = Clubbook.create(club_id:1, book_id: 38)
clubbook3 = Clubbook.create(club_id:2, book_id: 20)
clubbook4 = Clubbook.create(club_id:3, book_id: 9)
clubbook5 = Clubbook.create(club_id:3, book_id: 10)
clubbook6 = Clubbook.create(club_id:3, book_id: 15)
clubbook7 = Clubbook.create(club_id:3, book_id: 25)
clubbook8 = Clubbook.create(club_id:3, book_id: 32)

review1 = Review.create(user_id: 1, book_id: 1, review: 'Worst thing ive ever read!! do not waste your time')
review2 = Review.create(user_id: 2, book_id: 1, review: 'Absolutely life changing. Best book you can ever read!')
review3 = Review.create(user_id: 3, book_id: 1, review: 'it was ok i guess')

meeting1 = Meeting.create(club_id: 1, zoom: 'zoom.com/goodluck', description:'Today we are going to go over our latest read. If you dont come ur banned forever :)')



