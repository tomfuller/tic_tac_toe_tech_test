require 'player'
require 'playerX'

describe PlayerX do

  subject(:playerX){ described_class.new }

  context 'initialize' do

    it 'should be initialized with an X mark' do
      expect(playerX.mark).to eq "X"
    end

  end

end
