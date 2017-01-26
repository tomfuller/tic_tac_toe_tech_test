#responsibility: manage the game
class Game

  attr_reader :playerX, :playerO, :board, :players

  def initialize(playerX, playerO, board)
    @playerX = playerX.new
    @playerO = playerO.new
    @board = board.new
    @players = [playerX, playerO]
  end

  def current_player
    players[0]
  end

  def over?
    board.full?
  end

  def player_wins?
    board.winner?('X')
  end

  def swap_player
    players.reverse!
  end
end
