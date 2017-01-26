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
  end

  def square_taken?(square)
    this_square = find_square(square)
    squares.values_at(this_square)[0].taken?
  end

  private

  def find_square(square)
    squares.keys.each {|s| return s if s == square}
  end

  def populate_squares(square_klass)
    [*1..9].each do |n|
      @squares[n] = square_klass.new
    end
  end

  def add_mark_to_square(mark, square)
    x_squares.push(square) if mark == 'X'
    o_squares.push(square) if mark == 'O'
  end

end
