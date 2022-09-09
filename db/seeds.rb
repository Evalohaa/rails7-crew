# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Deleting all the seeds"
Argonaute.destroy_all

puts "Creating Argonautes"
argonaute_1 = Argonaute.create(name: "Eleftheria")
argonaute_2 = Argonaute.create(name: "Gennadios")
argonaute_3 = Argonaute.create(name: "Lysimachos")
