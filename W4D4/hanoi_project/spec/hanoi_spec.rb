require "hanoi"

describe TowerOfHanoi do
    
    describe "#initialize" do
        subject(:base) { TowerOfHanoi.new }
        it "base needs to be three" do
            expect(subject.base.length).to eq(3)
        end
        it "each base should be able to hold three rings" do
            expect(subject.base[0].length).to eq(3)
        end
    end
    
end
