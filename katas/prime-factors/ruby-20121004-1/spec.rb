require './code'

describe 'prime_factors' do
  it 'returns [] for 0' do
    prime_factors(0).should eq([])
  end

  it 'returns [] for 1' do
    prime_factors(1).should eq([])
  end

  it 'returns [2] for 2' do
    prime_factors(2).should eq([2])
  end
end

