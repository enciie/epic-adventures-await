# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username:"GroovyChedda", email:"groovychedda@mail.com", password:"password", password_confirmation:"password")

trip = user.trips.build(name: "Winter Wonderland", description:"January 2019 first trip of the year", location:"Switzlerand", img_url:"https://i.imgur.com/jPlp1o4.jpg")
trip.save

trip.comments.build(content: "Can't wait!", user_id: "2").save

user_b = User.create(username:"BravePerson", email:"braveperson@mail.com", password:"password", password_confirmation:"password")

trip_b = user_b.trips.build(name: "Kiwi Adventure", description:"Backpacking trip to Sotuh New Zealand", location:"Queenstown, NZ", img_url:"https://i.imgur.com/SjNlE7v.jpg" )
trip_b.save

trip_b.comments.build(content: "Breathtaking views and endless adventures", user_id: "1").save

user_c = User.create(username:"test", email:"test@mail.com", password:"password", password_confirmation:"password")

trip_c = user_c.trips.build(name: "Alstrom Point", description:"car camping with a spectacular sunrise and sunset view!!! Absolutely breathtaking!", location:"Kane County, Utah", img_url:"https://i.imgur.com/SzJYLIh.jpg" )
trip_c.save

trip_d = user_c.trips.build(name: "California Coastline", description:"Amazing beach views and great car camping spot. Avoid on stormy days!", location:"Big Sur, CA", img_url:"https://i.imgur.com/sDYQhZk.jpg" )
trip_d.save
