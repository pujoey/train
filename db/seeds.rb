# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
# Session.delete_all
# Trainer.delete_all
# Message.delete_all


a = User.new(
  email:                 "jo1@gmail.com",
  account_name:          "jo1",
  image_uri:             "https://goo.gl/RhIeZE",
  password:              "1234",
  password_confirmation: "1234"
)
a.save

b = User.new(
  email:                 "jo2@gmail.com",
  account_name:          "jo2",
  password:              "1234",
  password_confirmation: "1234"
)
b.save

c = User.new(
  email:                 "jo3@gmail.com",
  account_name:          "jo3",
  password:              "1234",
  password_confirmation: "1234"
)
c.save

