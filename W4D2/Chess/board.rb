require_relative "piece.rb"

class Board
    def initialize
        @grid = Array.new(8) { Array.new(8) }
        
    end

    def [](pos)
        x, y = pos
        @grid[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @grid[x][y] = val
    end

    def move_piece(start_pos, end_pos)
        raise "position is invalid" if self[start_pos] == nil

    end


end