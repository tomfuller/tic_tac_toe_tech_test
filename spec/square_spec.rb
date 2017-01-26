require 'square'
describe Square do

  subject(:square){ described_class.new }

  it 'should have an attribute for a marking on it' do
    expect(square.marking).to eq ''
  end

  it 'should be able to have its marking set' do
    square.mark('X')
    expect(square.marking).to eq 'X'
  end

  it 'should be able to tell if its not taken' do
    expect(square.taken?).to eq false
  end

  it 'should be able to tell if its taken' do
    square.mark('X')
    expect(square.taken?).to eq true
  end
end
