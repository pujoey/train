# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Schedule.delete_all
Trainer.delete_all
Message.delete_all

# User creation
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

# Trainers creation
at = Trainer.new(
  email:                 "tjo1@gmail.com",
  account_name:          "tjo1",
  image_uri:             "https://goo.gl/RhIeZE",
  password:              "1234",
  password_confirmation: "1234"
)
at.save

bt = Trainer.new(
  email:                 "tjo2@gmail.com",
  account_name:          "tjo2",
  password:              "1234",
  password_confirmation: "1234"
)
bt.save

ct = Trainer.new(
  email:                 "tjo3@gmail.com",
  account_name:          "tjo3",
  password:              "1234",
  password_confirmation: "1234"
)
ct.save


# Messages creation
M1 = Message.create(title: 'Testing1', content: 'Testing content 1')
M2 = Message.create(title: 'Testing2', content: 'Testing content 2')
M3 = Message.create(title: 'Testing3', content: 'Testing content 3')

# Schedules creation
S1 = Schedule.create(title: 'Schedule title', description: 'Testing description 1', area_focus: 'Shoulders & Arms')
S2 = Schedule.create(title: 'Schedule title2', description: 'Testing description 2', area_focus: 'Shoulders & Arms2')
S3 = Schedule.create(title: 'Schedule title3', description: 'Testing description 3', area_focus: 'Shoulders & Arms3')

a.messages << M2
a.schedules << S1
a.save
ct.users << a
ct.messages << M1
ct.save


