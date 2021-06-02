class Piece
    attr_reader :pos, :board, :color
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end
end