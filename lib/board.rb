#responsibility: keep track of the board
class Board

  attr_reader :squares, :x_squares, :o_squares

  def initialize(square_klass)
    @squares = {}
    populate_squares(square_klass)
    @x_squares = []
    @o_squares = []
  end

  def mark_square(mark, square)
    add_mark_to_square(mark, square)
    remove_taken_square_from_sqaures(square)
  end

  def square_taken?(square)
    return false if squares.keys.include?(square)
    true
  end

  private

  def populate_squares(square_klass)
    [*1..9].each do |n|
      @squares[n] = square_klass.new
    end
  end

  def remove_taken_square_from_sqaures(square)
    squares.delete(square)
  end

  def add_mark_to_square(mark, square)
    x_squares.push(square) if mark == 'X'
    o_squares.push(square) if mark == 'O'
  end

end
