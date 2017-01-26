#responsibility: taking a turn
class Player

  attr_reader :mark, :board

  def initialize(mark, board)
    @mark = mark
    @board = board
  end

  def pick_square(square_number)
    raise "This square is already taken, please choose a different one" if board.square_taken(square_number)
    mark_square(square_number)
  end

  private

  def mark_square(square)
    board.mark_square(mark, square)
  end




end
