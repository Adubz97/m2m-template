require "pry"
class Movie

    attr_accessor :name, :actors

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_all_movies_by_name(movie_name)
        self.all.find do |movie|
        movie.name == movie_name
    end
    end

    def self.find_all_movie_by_actor(actor)       
        array = self.all.select do |movie|
            movie.actors.include? (actor)
        end
        array
    end


    def actors
        MovieActor.all.find_all do |ma|
            ma.movie==self
        end.map do |ma|
            ma.actor
        end
    end

    def add_actor(actor)
        MovieActor.new(self,actor)
    end
end