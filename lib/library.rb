require './lib/author'

class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  # def add_author(author)
  #   @authors << author
  #   @authors.each do |author|
  #   end
  # end
end