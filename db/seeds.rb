# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Session.delete_all
Trainer.delete_all
Message.delete_all


User.create(
  email:                 "bob.garfield@gmail.com",
  handle:                "garfield minus morality",
  profile_image_uri:     "https://goo.gl/RhIeZE",
  # password:              "123",
  # password_confirmation: "123"
)

book_list = [
  {isbn: "9487123", title: "Catcher in the Rye",  author: "JD Salinger", edition: 2, has_read: true},
  {isbn: "4328974", title: "Catch Me If You Can", author: "Someone",     edition: 1, has_read: false},
  {isbn: "1239410", title: "Rye Rye Rye",         author: "Beth Samson", edition: 4, has_read: false},
]

Book.create book_list
