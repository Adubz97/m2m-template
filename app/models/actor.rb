class Actor

    attr_reader :name

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
        end.map {|pair| pair.movie}
    end

    def add_movie(movie)
        MovieActor.new(movie,self)
    end

    def self.find_actor_by_name(actor_name)
        self.all.find {|actor| actor.name == actor_name}
    end

    def look_up_movies_of_actor_by_genre(genre)
        movies.select do |movie|
            movie.genre == genre
        end
    end

    def movie_genres
        array=movies.map do |movie|
            movie.genre
        end
        array.uniq
    end
end