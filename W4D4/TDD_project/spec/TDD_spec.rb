require 'TDD'

describe Array do

    describe "#my_uniq" do
        it "remove all the duplicates from the array" do
           array = [1, 2, 1, 3, 3]
           expect(array.my_uniq).to eq([1, 2, 3]) 
        end
    end

    describe "#two_sum" do 
        it "find pairs that sum to zero" do
            array = [-1, 0, 2, -2, 1]
            # subject(:array){ [-1, 0, 2, -2, 1] }
            expect(array.two_sum).to eq([[0, 4], [2, 3]])
        end
    end

end