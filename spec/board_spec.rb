require 'board'

describe Board do

  subject(:board){ described_class.new(square) }
  let(:square){ double(:square) }
  before { allow(square).to receive(:new).and_return(square)}

  context 'initialize' do

    it 'should be initialized with a an array of squares' do
      expect(board.squares.keys).to eq([1,2,3,4,5,6,7,8,9])
    end

  end

  context 'recieveing a move' do

    it 'should be able to take a mark X and a square and place mark in square' do
      allow(square).to receive(:mark)
      expect(board).to respond_to(:mark_square)
    end

    it 'should be able to take a mark O and a square and place mark in square' do
      allow(square).to receive(:mark)
      expect(board).to respond_to(:mark_square)
    end

  end

  context 'check if square is taken' do

    it 'should check if square is already taken return false' do
      allow(square).to receive(:taken?).and_return(false)
      expect(board.square_taken?(6)).to eq false
    end

    it 'should check if square is already taken return true' do
      allow(square).to receive(:taken?).and_return(true)
      allow(square).to receive(:mark)
      board.mark_square('O', 6)
      expect(board.square_taken?(6)).to eq true
    end

  end

end
