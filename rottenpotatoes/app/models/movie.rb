class Movie < ActiveRecord::Base
  def has_same_director
    movies_with_same_director = []
    Movie.where(director: self.director).each do |movie|
      if self != movie
        movies_with_same_director += [movie]
      end
    end
    return movies_with_same_director
  end
end
