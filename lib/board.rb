#responsibility: hold squares
class Board

  attr_reader :squares, :x_squares, :o_squares

  def initialize(square_klass)
    @squares = {}
    populate_squares(square_klass)
  end

  def mark_square(mark, square)
    add_mark_to_square(mark, square)
  end

  def square_taken?(square)
    this_square = find_square(square)
    squares.values_at(this_square)[0].taken?
  end

  private

  def populate_squares(square_klass)
    [*1..9].each do |n|
      @squares[n] = square_klass.new
    end
  end

  def add_mark_to_square(mark, square)
    this_square = find_square(square)
    squares.values_at(this_square)[0].mark(mark)
  end

  def find_square(square)
    squares.keys.each {|s| return s if s == square}
  end

end
