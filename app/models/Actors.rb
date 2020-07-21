class Actor

    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def movies
        MovieActor.all.select do |pair|
            pair.actor == self
        end.map do |pair|
            pair.movie
        end
    end

    def add_movie(movie)
        MovieActor.new(movie,self)
    end

    def self.find_all_actors_by_name(actor_name)
        self.all.find do |actor|
        actor.name == actor_name
        end
    end

    def self.find_all_actors_by_movie(movie)       
        array = self.all.select do |actor|
            actor.movies.include? (movie)
        end
        array
    end
end