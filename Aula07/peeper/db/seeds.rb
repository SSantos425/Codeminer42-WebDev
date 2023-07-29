# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

sam = User.create(handle: "sam", display_name: "samuel",bio:"likes DC",born_at:1998-06-20)
gabi = User.create(handle: "gabi",display_name: "Shingeki",bio:"Dont like the potato girl",born_at:1998-06-20)
james = User.create(handle: "james",display_name: "watson",bio:"sidekick of sherlock",born_at:1998-06-20)