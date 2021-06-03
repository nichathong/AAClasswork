
require 'TDD'

describe Array do

    describe "#remove_dups" do
        it "remove all the duplicates from the array" do
           array = [1, 2, 1, 3, 3]
           expect(array.remove_dups). to eq([1, 2, 3]) 
        end
    end
end