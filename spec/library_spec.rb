require './lib/library'
require './lib/author'

RSpec.describe Library do 
  before(:each) do 
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")    
    @professor = @charlotte_bronte.write("The Professor", "1857")
    @villette = @charlotte_bronte.write("Villette", "1853")
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
  end

  describe "intialize" do
    it "exists" do 
      dpl = Library.new("Denver Public Library")
      dpl = Library.new("Denver Public Library")
      
      expect(dpl).to be_a Library
    end 
    
    it "has a name " do 
      dpl = Library.new("Denver Public Library")
      
      expect(dpl.name).to eq("Denver Public Library")
    end
    
    it "has and empty books and authors arrays" do 
      dpl = Library.new("Denver Public Library")
      
      expect(dpl.books).to eq([])
      expect(dpl.authors).to eq([])
    end
  end
  
  describe "#add_author" do 
  it "adds authors to the libraries author array" do 
    dpl = Library.new("Denver Public Library")
    dpl.add_author(@charlotte_bronte)
    dpl.add_author(@harper_lee)
    
    expect(dpl.authors).to eq([@charlotte_bronte, @harper_lee])
  end
  
  it "adds the books of each other to the library array" do 
      dpl = Library.new("Denver Public Library")
      dpl.add_author(@charlotte_bronte)
      dpl.add_author(@harper_lee)
      
      expect(dpl.books).to eq([@jane_eyre, @professor, @villette, @mockingbird])
    end
  end
  
  describe "publication_time_frame_for" do 
    it "returns a publication timeframe for a certain author" do 
      dpl = Library.new("Denver Public Library")
      dpl.add_author(@charlotte_bronte)
      dpl.add_author(@harper_lee)
      # require 'pry';binding.pry
      expect(dpl.publication_time_frame_for(@charlotte_bronte)).to eq({:start => "1847", :end => "1857"})
    end
  end
  
  describe "#checkout" do 
  it "has an array of checked out books" do 
    dpl = Library.new("Denver Public Library")
    dpl = Library.new("Denver Public Library")
    
    expect(dpl.checked_out_books).to eq([])
    # expect(dpl.checkout(@jane_eyre))
  end 
  
    it "can checkout a book and add" do 
      dpl = Library.new("Denver Public Library")
      dpl.add_author(@charlotte_bronte)
      dpl.add_author(@harper_lee)

      expect(dpl.books).to eq([@jane_eyre, @professor, @villette, @mockingbird])

      dpl.checkout(@jane_eyre)
      require 'pry';binding.pry
      expect(dpl.books).to eq([@professor, @villette, @mockingbird])
      expect(dpl.checked_out_books).to eq([@jane_eyre])
    end
  end
  
  describe "#return" do 
    it "can return a book to @books and remove from @checked_out_books" do 
      dpl = Library.new("Denver Public Library")
      dpl.add_author(@charlotte_bronte)
      dpl.add_author(@harper_lee)

      expect(dpl.books).to eq([@jane_eyre, @professor, @villette, @mockingbird])
      # require 'pry';binding.pry
      dpl.checkout(@jane_eyre)
      expect(dpl.checked_out_books).to eq([@jane_eyre])
      
      dpl.return(@jane_eyre)
      expect(dpl.checked_out_books).to eq([])
      expect(dpl.books).to eq([@jane_eyre, @professor, @villette, @mockingbird])
    end 
  end
end