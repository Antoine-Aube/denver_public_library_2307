class Author
  attr_reader :name, :books
  def initialize(author_info)
    @name = "#{author_info[:first_name]} #{author_info[:last_name]}"
    @books = []
  end
end