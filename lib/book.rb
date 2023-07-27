class Book
  attr_reader :title,
              :author,
              :publication_year
  def initialize(book_information)
    @title = book_information[:title]
    @author = "#{book_information[:author_first_name]} #{book_information[:author_last_name]}"
    @publication_date = book_information[:publication_date]
  end

  def publication_year
    @publication_date.split[-1]
  end
end