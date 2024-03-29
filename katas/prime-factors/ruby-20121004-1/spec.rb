require './code'

describe 'prime_factors' do
  {
      0 => [],
      1 => [],
      2 => [2],
      3 => [3],
      4 => [2,2],
      5 => [5],
      9 => [3,3],
      12 => [2,2,3],
      101 => [101]
  }.each do |input, output|
    it "returns #{output} for #{input}" do
      prime_factors(input).should eq(output)
    end
  end
end

