# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email:"me_or_me.com",username:"this_could_be_me",encrypted_password:"this_could_be_me",salt:"soap")
post = 10.times.map{|m| User.first.posts.create(text:"#{m} text",comment:"This is Cant be your comment #{m}")}