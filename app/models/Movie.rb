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
        self.all.find do |pair|
        pair.name == movie_name
    end
    end

    def find_all_movie_by_actor(actor)
        array = self.all.select do |movie|
            movie.actors.include? (actor)
        end
        array
    end


    # def .all

    # end

end