class Movie < ActiveRecord::Base

    def others_by_same_director
        @movie = Movie.find(id)
        @director = @movie.director
        @other_movies = Movie.where(:director => @director).and(Movie.where.not(:id => id))
    end

end
