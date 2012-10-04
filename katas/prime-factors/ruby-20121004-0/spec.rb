require './code'

describe 'prime_factors' do
  {0 => []}.each do |input, output|
    it "#{input} -> #{output}" do
      prime_factors(input).should eq output
    end
  end
end

