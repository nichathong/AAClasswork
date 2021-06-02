require_relative "piece.rb"

class Board
    def initialize
        @grid = Array.new(8) { Array.new(8) }
        
        (0...8).each do |index|
            @grid[0][index] = Piece.new
            @grid[1][index] = Piece.new
            @grid[6][index] = Piece.new
            @grid[7][index] = Piece.new
        end
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
        return false unless self[pos].empty?
        return false if pos.any? { |ele| ele > 7 || ele < 0}
        true
    end

    def move_piece(start_pos, end_pos)
        raise "position is invalid" if self[start_pos] == nil
        raise "position is invalid" if start_pos.any? { |ele| ele > 7 || ele < 0}
        raise "position is invalid" if end_pos.any? { |ele| ele > 7 || ele < 0}
    end


end