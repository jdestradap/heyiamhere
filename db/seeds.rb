# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_bike = User.create(name: "Jeronimo", cellphone: "+573128485660", email:"jzc723@gmail.com", created_at: Time.now, updated_at: Time.now)
user_son = User.create(name: "Jubel", cellphone: "+573006205791", email:"jubel@gmail.com", created_at: Time.now, updated_at: Time.now)

bike = Article.create(name: "Trek", description: "La Zanahoria", created_at: Time.now, updated_at: Time.now)

jubelcito = Article.create(name: "Hijo", description: "Hijo", created_at: Time.now, updated_at: Time.now)

user_bike.articles << bike
user_son.articles << jubelcito

location_son = Location.create(tracking: true, start_date: Time.now, end_date: Time.now + 60*120, created_at: Time.now, updated_at: Time.now, latitud: 6.2442, longitud: 75.5812, max_radius_alert: 10)
location_bike = Location.create(tracking: true, start_date: Time.now, end_date: Time.now + 60*120, created_at: Time.now, updated_at: Time.now, latitud: 6.2442, longitud: 75.5812, max_radius_alert: 1)

jubelcito.locations << location_son
bike.locations << location_bike
