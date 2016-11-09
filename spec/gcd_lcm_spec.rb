require 'simplecov'
SimpleCov.start

require 'gcd_lcm'

RSpec.describe 'gcd_lcm.rb' do
  describe '#lcm' do
    it 'should be defined' do
      expect { lcm(3, 7) }.not_to raise_error
    end

    it 'returns the correct type' do
      expect(lcm(5, 9)).to be_a_kind_of Integer
    end

    it 'return the correct result' do
      expect(lcm(4, 16)).to equal(16)
    end

    it 'returns a positive number' do
      b = (lcm(7, 14) > 0)
      expect(b).to eq(true)
    end
  end
end
