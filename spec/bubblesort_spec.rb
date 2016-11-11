require 'simplecov'
SimpleCov.start

require 'bubblesort'

RSpec.describe 'bubblesort.rb' do
  describe '#bubblesort' do
    it 'should be defined' do
      expect { bubblesort([1, 3, 4]) }.not_to raise_error
    end

    it 'returns sorted data' do
      expect(bubblesort([5, 4, 3, 2, 1])).to match_array([1, 2, 3, 4, 5])
      expect(bubblesort([5, 3, 4, 1, 2])).to match_array([1, 2, 3, 4, 5])
      expect(bubblesort([4, 4, 1, 2, 1])).to match_array([1, 1, 2, 4, 4])
      expect(bubblesort([-5, 4, -3, 2, 1])).to match_array([-5, -3, 1, 2, 4])
      expect(bubblesort([1, 2, 3, 4, 5])).to match_array([1, 2, 3, 4, 5])
      expect(bubblesort([])).to match_array([])
    end

    it 'returns the correct type' do
      expect(bubblesort([4, 3, 2, 1])).to be_an_instance_of Array
    end

    it 'correct argument' do
      arr = bubblesort([5.8, 7, 6, 4, 5, 1, 2, 3])
      i = 0
      arr.each do |x|
        i += 1 if x.instance_of?(Numeric) != true
      end
      expect(i.zero?)
    end
  end
end
