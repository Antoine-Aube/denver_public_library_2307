require './lib/book'
require './lib/author'

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
      
      expect(charlotte_bronte.books).to eq([])
    end
  end
  
  describe "#write" do 
    it "can create book objects" do 
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      
      expect(jane_eyre.class).to eq(Book)
      expect(jane_eyre.title).to eq("Jane Eyre")
    end 

  
    it "can add books to its books array with the write method" do 
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
      villette = charlotte_bronte.write("Villette", "1853")
      
      expect(charlotte_bronte.books).to eq([jane_eyre, villette])
    end
  end 
  
  describe "#sorted_publication_years" do 
    it "can return an array of all publation years from an author's book" do 
      charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
      villette = charlotte_bronte.write("Villette", "1853")
      jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")

      # require 'pry';binding.pry
      expect(charlotte_bronte.sorted_publication_years).to eq(["1847", "1853"])
    end
  end
end