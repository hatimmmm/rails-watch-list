# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Add more movies to the array
Movie.destroy_all

movies =
[
    {
      title: "Inception",
      overview: "A skilled thief enters the dreams of others to steal their deepest secrets, navigating a world of subconsciousness and corporate espionage.",
      poster_url: "https://www.movieposters.com/cdn/shop/products/14e6d5440ba4b15532eb5aa218b01f06_480x.progressive.jpg?v=1573593914",
      rating: 8.8
    },
    {
      title: "The Shawshank Redemption",
      overview: "Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.",
      poster_url: "https://www.movieposters.com/cdn/shop/files/shawshank.128000_c9a45f6e-7685-4a95-b3ec-0dac14f43543_480x.progressive.jpg?v=1697998923",
      rating: 9.3
    },
    {
      title: "The Godfather",
      overview: "The patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
      poster_url: "https://www.movieposters.com/cdn/shop/products/the-godfather_lkfmijop_480x.progressive.jpg?v=1645738174",
      rating: 9.2
    },
    {
      title: "Pulp Fiction",
      overview: "The lives of two mob hitmen, a boxer, a gangster's wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
      poster_url: "https://www.movieposters.com/cdn/shop/products/pulpfiction.2436_480x.progressive.jpg?v=1620048742",
      rating: 8.9
    },
    {
      title: "The Dark Knight",
      overview: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      poster_url: "https://www.movieposters.com/cdn/shop/products/pulpfiction.2436_480x.progressive.jpg?v=1620048742",
      rating: 9.0
    },
    {
      title: "Schindler's List",
      overview: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.",
      poster_url: "https://www.movieposters.com/cdn/shop/products/5fbfe03541a8ed224e7d0d132fb63181_c6f1956f-f5b8-4f11-b9e5-77d7dba5347c_480x.progressive.jpg?v=1573651232",
      rating: 8.9
    },
    {
      title: "Forrest Gump",
      overview: "The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold through the perspective of an Alabama man with an IQ of 75.",
      poster_url: "https://www.movieposters.com/cdn/shop/products/77e810938fdaf6a8a6879aabef828d78_7b4c41f9-0c33-4b0e-acb3-93bad47e4347_480x.progressive.jpg?v=1573587341",
      rating: 8.8
    },
    {
      title: "The Matrix",
      overview: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
      poster_url: "https://www.movieposters.com/cdn/shop/files/scan_f48bfe00-c291-441c-8bcb-63abbe283fed_480x.progressive.jpg?v=1688653768",
      rating: 8.7
    },
    {
      title: "The Silence of the Lambs",
      overview: "A young FBI cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.",
      poster_url: "https://www.movieposters.com/cdn/shop/products/a3df374e001e0232d1522dc69145ffd3_0a3cee09-fd00-4af9-b7e7-efc75819e42d_480x.progressive.jpg?v=1573594812",
      rating: 8.6
    },
    {
      title: "The Lord of the Rings: The Return of the King",
      overview: "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
      poster_url: "https://www.movieposters.com/cdn/shop/products/the-lord-of-the-rings-the-return-of-the-king_b2bb2806_480x.progressive.jpg?v=1656351074",
      rating: 8.9
    }
  ]
  

# Iterate over the array and create each movie in the database
Movie.create!(movies)

puts "Created #{Movie.count} movies"
