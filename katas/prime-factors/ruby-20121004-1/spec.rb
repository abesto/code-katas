require './code'

describe 'prime_factors' do
  it 'returns [] for 0' do
    prime_factors(0).should eq([])
  end
end

