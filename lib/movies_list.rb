require_relative "./movie"
require_relative "./feature_film"

class MoviesList
  def self.start(&block)
    list = self.new
    list.instance_eval(&block)
  end

  def initialize
    @movies = []
  end

  def feature_film(name, kind, characters = [])
    @movies << FeatureFilm.new(name, kind, characters)
  end

  def movie(name, kind)
    @movies << Movie.new(name, kind)
  end

  def print_list
    @movies.each do |movie|
      movie.print
      puts ""
    end
  end
end