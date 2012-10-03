require './code'

table = {
  0 => [],
  1 => [],
  2 => [2],
  3 => [3],
  4 => [2,2],
  5 => [5],
  6 => [2,3],
  9 => [3,3]
}


describe 'prime_factors' do
  table.each do |input, output|
    specify "#{input} -> #{output}" do
      prime_factors(input).should eq(output)
    end
  end
end
