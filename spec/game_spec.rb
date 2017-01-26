require 'game'

describe Game do

  subject(:game){ described_class.new(player1, player2, board) }
  let(:player1){ double(:player1)}
  let(:player2){ double(:player2)}
  let(:board){ double(:board)}


  context 'initilaize' do

    it 'should be initialized with a board' do
      expect(game.board).to eq(board)
    end

    it 'should be initialized with a player1' do
      expect(game.player1).to eq(player1)
    end

    it 'should be initialized with a player2' do
      expect(game.player2).to eq(player2)
    end

  end

end
