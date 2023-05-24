# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Room.create(name: "Room Creative")
Room.create(name: "Room Music")
Room.create(name: "Room Random")

User.create(email: "user1@gmail.com", password: "Pass1234", password_confirmation: "Pass1234")
User.create(email: "user2@gmail.com", password: "Pass1234", password_confirmation: "Pass1234")
User.create(email: "user3@gmail.com", password: "Pass1234", password_confirmation: "Pass1234")

