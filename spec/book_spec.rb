require './lib/book'

RSpec.describe Book do 
  describe "iteration 1" do 
    it "exists, has name, author, and publication year" do 
      book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
      #=> #<Book:0x00007fcc021fad08...>
      
      expect(book).to be_a Book
      expect(book.title).to eq("To Kill a Mockingbird")
      #=> "To Kill a Mockingbird"
      
      expect(book.author).to eq("Harper Lee")
      #=> "Harper Lee"
      
      expect(book.publication_year).to eq("1960")
    end 
  end 
end

