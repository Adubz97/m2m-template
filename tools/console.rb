require_relative '../config/environment.rb'

# create test data/variables here

movie = Movie.new("Avengers")
movie.name
puts Movie.find_all_movies_by_name("Avengers")


binding.pry