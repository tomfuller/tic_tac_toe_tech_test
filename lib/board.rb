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

  def winner?(mark)
    player_squares = get_players_squares(mark)
    player_have_row?(player_squares)
  end

  private

  def player_have_row?(player_squares)
    combo_array = player_squares.combination(3).to_a
    combo_array.map! {|arr| (arr[1][0] - arr[0][0]) == (arr[2][0] - arr[1][0])}
    return true if combo_array.include?(true)
    false
  end

  def get_players_squares(mark)
    player_squares = []
    squares.each { |square| player_squares.push(square) if square[1].mark == mark }
    player_squares
  end

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
