require_relative "./validator"

class Movie
  include Validator
  
  attr_reader :name, :kind

  def initialize(name, kind)
    validate_kind(kind)
    @name = name
    @kind = kind
  end

  def print
    puts "Name: #{@name}"
    puts "Kind: #{@kind}"
  end
end