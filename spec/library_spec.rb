require './lib/library'
require './lib/author'

RSpec.describe Library do 
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
end