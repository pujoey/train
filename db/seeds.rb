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

# while loop user creation for mass users testing
i= 0
num=10
while i < num do
  acct_tmp = 'jo' + i.to_s
  email_tmp = 'jo' +i.to_s
  email_tmp +='@gmail.com'
  add_tmp = i.to_s + ' road'
  curr_tmp = 200 + i
  goal_tmp = 180 + i
  height_tmp = 170 + i

  User.create("account_name" => acct_tmp, "email" => email_tmp,
    "password" => '1234', "password_confirmation" =>'1234',
    "first_name" => acct_tmp, "last_name" => acct_tmp,
    'middle_name' => acct_tmp, "image_uri" => "https://goo.gl/RhIeZE",
    'address1' => add_tmp, 'city' => 'West Covina',
    'zip' => 99999, "current_weight" => curr_tmp,
    "goal_weight" => goal_tmp, "height" => height_tmp)
  i+= 1
end


# While loop mass trainers creation
i= 0
num=10
while i < num do
  acct_tmp = 'trainerjo' + i.to_s
  email_tmp = 'trainerjo' +i.to_s
  email_tmp +='@gmail.com'
  add_tmp = i.to_s + ' road'

  Trainer.create("account_name" => acct_tmp, "email" => email_tmp,
    "password" => '1234', "password_confirmation" =>'1234',
    "first_name" => acct_tmp, "last_name" => acct_tmp,
    'middle_name' => acct_tmp, "image_uri" => "https://goo.gl/RhIeZE",
    'address1' => add_tmp, 'city' => 'West Covina',
    'zip' => 99999)
  i+= 1
end


# While loop mass messages creations and injection into User
i= 0
num=10
while i < num do
  title_tmp = 'Message Title Testing ' + i.to_s
  content_tmp = 'Message Content Testing ' + i.to_s
  User.find(i+1).messages << Message.create(title: title_tmp, content: content_tmp)
   Trainer.find(i+1).messages << Message.create(title: title_tmp, content: content_tmp)

  i+= 1
end

# Mass Schedules creation and injection into Users
i= 0
num=10
while i < num do
  title_tmp = 'Schedule Title Testing ' + i.to_s
  description_tmp = 'Schedule description Testing ' + i.to_s
  area_tmp = 'Shoulders & Arms' + i.to_s

  User.find(i+1).schedules << Schedule.create(title: title_tmp,
    description: description_tmp, area_focus: area_tmp,
    frequency_interval: 7)
    Trainer.find(i+1).schedules << Schedule.create(title: title_tmp,
    description: description_tmp, area_focus: area_tmp,
    frequency_interval: 7)
  i+= 1
end

# Mass injection from users into trainers
i = 0
num = 10
while i < num do
  tmp = User.find(i+1)
  Trainer.find(i+1).users << tmp
  i+=1
end

