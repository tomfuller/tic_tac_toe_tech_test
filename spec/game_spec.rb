require 'game'

describe Game do

  subject(:game){ described_class.new(player, board) }
  let(:player){ double(:player) }
  let(:board){ double(:board) }
  before {
    allow(player).to receive(:new).and_return(player)
    allow(board).to receive(:new).and_return(board)
  }

  context 'initilaize' do

    it 'should be initialized with a board' do
      expect(game.board).to eq(board)
    end

    it 'should be initialized with a player1' do
      expect(game.playerX).to eq(player)
    end

    it 'should be initialized with a player2' do
      expect(game.playerO).to eq(player)
    end

  end

  context 'game over' do

    it 'should know when the game is not over' do
      allow(board).to receive(:full?).and_return(false)
      expect(game.over?).to eq false
    end

    it 'should know when the game is over' do
      allow(board).to receive(:full?).and_return(true)
      expect(game.over?).to eq true
    end

  end

  context 'current player' do

    it 'should know who the current player is' do
      expect(game.current_player).to eq player
    end

    it 'should be able to switch current player' do
      game.swap_player
      expect(game.current_player).to eq player
    end

  end

  context 'current player won' do

    it 'should know if current player doesnt win' do
      allow(board).to receive(:winner?).with("X").and_return(false)
      allow(player).to receive(:mark).and_return('X')
      expect(game.player_wins?).to eq false
    end

    it 'should know if current player wins' do
      allow(board).to receive(:winner?).with("X").and_return(true)
      allow(player).to receive(:mark).and_return('X')
      game.board.winner?("X")
      expect(game.player_wins?).to eq true
    end

  end

end
