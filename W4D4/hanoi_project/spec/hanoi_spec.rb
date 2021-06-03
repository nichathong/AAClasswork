require "hanoi"

describe TowerOfHanoi do

    describe "#initialize" do
        it "base needs to be three, and should be able to hold six rings" do
            subject(:base) { TowerOfHanoi.new }
            expect(:base.length).to eq(3)
            expect(:base[0].length).to eq(6)

        end

    end
    
end
