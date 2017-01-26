require 'board'

describe Board do

  subject(:board){ described_class.new }

  it 'should be initialized with a an array of co ordinates' do
    expect(board.squares).to eq([[1,2,3],[4,5,6],[7,8,9]])
  end

end
