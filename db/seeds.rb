# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#encoding: UTF-8

artist1 = Artist.create({name: "Miles Kane", age: "30" })
artist2 = Artist.create({name: "Alex Turner", age: "30" })
artist3 = Artist.create({name: "Rob Swire", age: "33" })

genres = ["Drum n' Bass", "Dubstep", "British Pop", "Rock", "Indie Rock", "Mod Revival", "Garage Rock", "Chamber Pop", "Hard Rock"]

genres.count.times do |index|
	Genre.create({name: genres[(index)]})
end

50.times do |index|
	Song.create({artist_id: artist1.id, genre_id: Genre.find_by_id(rand(1..Genre.all.count)).id, title: "Song #{index}", duration: rand(55..800)})
end

50.times do |index|
	Song.create({artist_id: artist2.id, genre_id: Genre.find_by_id(rand(1..Genre.all.count)).id, title: "Song #{index}", duration: rand(55..800)})
end

50.times do |index|
	Song.create({artist_id: artist3.id, genre_id: Genre.find_by_id(rand(1..Genre.all.count)).id, title: "Song #{index}", duration: rand(55..800)})
end
