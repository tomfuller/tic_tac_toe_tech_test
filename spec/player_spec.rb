require 'player'
describe Player do

  subject(:player){ described_class.new }

  context 'initialize' do

    it 'should be initialized with a mark' do
      expect(player.mark).to eq 'P'
    end

  end


end
