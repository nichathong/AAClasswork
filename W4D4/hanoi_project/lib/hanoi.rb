class TowerOfHanoi
    attr_reader :base

    def initialize
        @base = [ [1,2,3],[],[] ]
    end

    def move_disc
        puts "get input from user"
        input = gets.chomp
        return input
    end


  
end