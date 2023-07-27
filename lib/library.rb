require './lib/author'

class Library
  attr_reader :name, :books, :authors, :checked_out_books

  def initialize(name)
    @name = name
    @books = []
    @authors = []
    @checked_out_books = []
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

  def checkout(book)
    @checked_out_books << book
    @books.delete(book)
  end

  def return(book)
    @checked_out_books.delete(book)
    @books << book
  end
end