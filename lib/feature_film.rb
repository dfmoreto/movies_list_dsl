require_relative "./movie"

class FeatureFilm < Movie
  attr_reader :characters

  def initialize(name, kind, characters = [])
    @characters = characters
    super(name, kind)
  end

  def print
    super
    characters_to_print = @characters.join(", ")
    puts "Characters: #{characters_to_print}"
  end
end