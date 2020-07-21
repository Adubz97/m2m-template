require "pry"
class Movie

    attr_accessor :genre
    attr_reader :name

    @@all = []

    def initialize (name, genre)
        @name = name
        @genre = genre
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

    def change_genre(genre)
        self.genre = genre
    end    
end