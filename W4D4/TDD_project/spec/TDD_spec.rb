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

    describe "#my_transpose" do
        it "puts elements from the row into the column" do 
            arrays = [ [0, 1, 2], [3, 4, 5],[6, 7, 8] ]
            expect(arrays.my_transpose).to eq( [[0, 3, 6],[1, 4, 7],[2, 5, 8]] )
        end
    end
    #price =    [4, 3, 1 , 0 , 5]
    #day(index)  0  1  2   3   4
    #                   [3,4]
    describe "#stock_picker" do 
        it "find the best pair" do 
            array = [4, 3, 1, 0, 5]
            expect(array.stock_picker).to eq([3, 4])
        end
    end

end