require './code'

describe 'prime_factors' do
  {0 => [],
   1 => [],
   2 => [2],
   3 => [3],
   4 => [2,2],
   5 => [5],
   6 => [2,3]
  }.each do |input, output|
    it "#{input} -> #{output}" do
      prime_factors(input).should eq output
    end
  end
end

