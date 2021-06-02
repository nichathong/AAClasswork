require_relative "piece.rb"

class Board
    def initialize
        @grid = Array.new(8) { Array.new(8) }

        
        # @grid[0][0] = Rook.new("white",self,[0,0])
           

        # (0...8).each do |index|
        #     @grid[1][index] = Pawn.new("White",self,[1,index])
        #     @grid[6][index] = Pawn.new("Black",self,[6,index])
        # end
           
        
    end

    def [](pos)
        x, y = pos
        @grid[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @grid[x][y] = val
    end

    def is_valid?(pos)
        #return false unless self[pos]==nil
        return false if pos.any? { |ele| ele > 7 || ele < 0}
        true
    end

    def empty?(pos)
          #return false unless self[pos].empty?
    end

    def move_piece(start_pos, end_pos)
        raise "position is invalid" if self[start_pos] == nil
        raise "position is invalid" if start_pos.any? { |ele| ele > 7 || ele < 0}
        raise "position is invalid" if end_pos.any? { |ele| ele > 7 || ele < 0}
    end


end