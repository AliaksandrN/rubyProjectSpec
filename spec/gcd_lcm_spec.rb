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
      expect(lcm(0, 16)).to equal(0)
    end

    it 'returns a positive number' do
      a = (lcm(-7, 14) > 0)
      b = (lcm(7, -14) > 0)
      c = (lcm(-7, -14) > 0)
      expect(a && b && c).to eq(true)
    end
  end
end
