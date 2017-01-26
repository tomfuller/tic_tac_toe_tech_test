require 'player'

describe Player do

  subject(:playerX){ described_class.new('X', board) }
  let(:playerO){ described_class.new("O", board) }
  let(:board) { double(:board) }

  context 'initialize' do

    it 'should be initialized with a mark, X' do
      expect(playerX.mark).to eq 'X'
    end

    it 'should be initialized with a mark, O' do
      expect(playerO.mark).to eq 'O'
    end

  end

  context 'take go' do

    it 'should not be able to pick a square if it is already marked' do
      allow(board).to receive(:square_taken).with(5).and_return(true)
      expect{playerX.pick_square(5)}.to raise_error("This square is already taken, please choose a different one")
    end

  end

end
