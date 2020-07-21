require_relative '../config/environment.rb'

# create test data/variables here

avengers= Movie.new("Avengers")
snowpiercer=Movie.new("Snowpiercer")
#movie.name
#puts Movie.find_all_movies_by_name("Avengers")
rdj= Actor.new("RDJ")
chris_evans=Actor.new("Chris Evans")
MovieActor.new(avengers, rdj)
transformers=Movie.new("Transformers")
megan_fox=Actor.new("Megan Fox")
shia=Actor.new("Shia")
MovieActor.new(transformers, megan_fox)
MovieActor.new(transformers, shia)

#puts Movie.find_all_movie_by_actor(megan_fox)
#puts avengers.actors
#puts transformers.actors
#prints megan_fox.movies
avengers.add_actor(chris_evans)
#print avengers.actors

chris_evans.add_movie(snowpiercer)
#print chris_evans.movies

print Actor.find_all_actors_by_name("RDJ")

print Actor.find_all_actors_by_movie(avengers)   

binding.pry