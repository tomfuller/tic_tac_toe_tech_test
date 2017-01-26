require 'playerO'
describe PlayerO do

  subject(:playerO){ described_class.new }

  context 'initialize' do

    it 'should be initialized with an O mark' do
      expect(playerO.mark).to eq 'O'
    end

  end
end
