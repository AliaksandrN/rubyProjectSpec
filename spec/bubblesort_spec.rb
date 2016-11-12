require 'simplecov'
SimpleCov.start

require 'bubblesort'

RSpec.describe 'bubblesort.rb' do
  describe '#bubblesort' do
    it 'should be defined' do
      expect { bubblesort([1, 3, 4]) }.not_to raise_error
    end

    it 'returns sorted Integer data' do
      expect(bubblesort([5, 4, 3, 2, 1])).to match_array([1, 2, 3, 4, 5])
      expect(bubblesort([5, 3, 4, 1, 2])).to match_array([1, 2, 3, 4, 5])
      expect(bubblesort([4, 4, 1, 2, 1])).to match_array([1, 1, 2, 4, 4])
      expect(bubblesort([-5, 4, -3, 2, 1])).to match_array([-5, -3, 1, 2, 4])
      expect(bubblesort([1, 2, 3, 4, 5])).to match_array([1, 2, 3, 4, 5])
    end

    it 'returns sorted Float data' do
      expect(bubblesort([4.3, 4.56, -2.6])).to match_array([-2.6, 4.3, 4.56])
      expect(bubblesort([5.1, 4.3, 3.4, -2])).to match_array([-2, 3.4, 4.3, 5.1])
    end

    it 'returns sorted Numeric data' do
      expect(bubblesort([4.3, 3, 4.56, -2.6])).to match_array([-2.6, 3, 4.3, 4.56])
    end

    it 'returns sorted String data' do
      expect(bubblesort(['ba', 'a', 'aa', 'ab'])).to match_array(['a', 'aa', 'ab', 'ba'])
    end

    it 'returns sorted data' do
      expect(bubblesort(['z', 4.56, 2.6, 'a'])).to match_array([2.6, 4.56, 'a', 'z'])
    end

    it 'should be contaned String collection' do
      expect(bubblesort(%w(ba a aa ab))).to match_array(%w(aa a ab ba))
    end

    it 'length of output array' do
      ary = [4, 7, 1, 5]
      expect(bubblesort(ary).size).to equal(ary.size)
    end

    it 'empty array' do
      expect(bubblesort([])).to match_array([])
    end

    it 'returns the correct type' do
      expect(bubblesort([4, 3, 2, 1])).to be_an_instance_of Array
      expect(bubblesort(%w(z q ba))).to be_an_instance_of Array
    end

    it 'when argument is not Array' do
      expect(bubblesort(nil)).to be nil
      expect(bubblesort('text')).to be nil
      expect(bubblesort(111)).to be nil
      expect(bubblesort(10.3)).to be nil
    end
  end
end
