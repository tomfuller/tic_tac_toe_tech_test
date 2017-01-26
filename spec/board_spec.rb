require 'board'

describe Board do

  subject(:board){ described_class.new(square) }
  let(:square){ double(:square) }
  before { allow(square).to receive(:new).and_return(square)}

  context 'initialize' do

    it 'should be initialized with a an array of squares' do
      expect(board.squares.keys).to eq([1,2,3,4,5,6,7,8,9])
    end

    it "should be initialized with an empty array for X's moves" do
      expect(board.x_squares).to eq []
    end

    it "should be initialized with an empty array for O's moves" do
      expect(board.o_squares).to eq []
    end

  end

  context 'recieveing a move' do

    it 'should be able to take a mark X and a square and place mark in square' do
      board.mark_square('X', 5)
      expect(board.x_squares).to eq [5]
    end

    it 'should be able to take a mark O and a square and place mark in square' do
      board.mark_square('O', 5)
      expect(board.o_squares).to eq [5]
    end

  end

  context 'check if square is taken' do

    it 'should check if square is already taken return false' do
      allow(square).to receive(:taken?).and_return(false)
      expect(board.square_taken?(6)).to eq false
    end

    it 'should check if square is already taken return true' do
      allow(square).to receive(:taken?).and_return(true)
      board.mark_square('O', 6)
      expect(board.square_taken?(6)).to eq true
    end

  end

end
