#responsibility: manage the game
class Game

  attr_reader :playerX, :playerO, :board, :players

  def initialize(player_klass, board, square = Square)
    @board = board.new(square)
    @playerX = player_klass.new('X', board)
    @playerO = player_klass.new('O', board)
    @players = [playerX, playerO] #swap back to ternary
  end

  def current_player
    players[0]
  end

  def over?
    board.full?
  end

  def player_wins?
    board.winner?(current_player.mark)
  end

  def swap_player
    players.reverse!
  end
end
