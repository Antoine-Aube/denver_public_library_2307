require './lib/author'

class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.map {|book| @books << book}
  end

  def publication_time_frame_for(author)
    timeframe = {
      start: author.sorted_publication_years.first,
      end: author.sorted_publication_years.last
    }
    # timeframe
  end
end