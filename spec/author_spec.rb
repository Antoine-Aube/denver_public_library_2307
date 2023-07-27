pry(main)> require './lib/book'
pry(main)> require './lib/author'

RSpec.describe Author do 
  describe "initialize" do 
    it "exists" do 
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      
      expect(charlotte_bronte).to be_a Author
    end
    
    it "has a name that is a string of first and last name" do 
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      
      expect(charlotte_bronte.name).to eq("Charlotte Bronte")
    end
    
    it "has an empty array of books" do 
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

      expect(author.books).to eq([])
    end
  end
end