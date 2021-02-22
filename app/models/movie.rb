class Movie < ActiveRecord::Base

  def self.all_ratings
    @all_ratings = ['G','PG','PG-13','R']
    return @all_ratings
  end

  def self.with_ratings(ratings)
    @ratings_to_show = []
    @ratings_to_show = ratings
    @movies = Movie.where(rating: ratings)
  end


  def self.ratings_to_show
    return @ratings_to_show
  end

  def self.sort_by(movies, key)
    return movies.order(key)
  end

end
