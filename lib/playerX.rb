#responsibility: take X's turn
class PlayerX < Player

  attr_reader :mark

  def initialize
    @mark = "X"
  end

end
