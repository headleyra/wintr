require 'spec_helper'

RSpec.describe Wintr::WeightedDigitArray do
  describe '#to_s' do
    it 'converts 21 thousand' do
      expect(Wintr::WeightedDigitArray.new(%w[2 1], 1).to_s).to eq('twenty one thousand')
    end

    it 'converts 123 thousand' do
      expect(Wintr::WeightedDigitArray.new(%w[1 2 3], 1).to_s).to eq('one hundred and twenty three thousand')
    end

    it 'converts 103 million' do
      expect(Wintr::WeightedDigitArray.new(%w[1 0 3], 2).to_s).to eq('one hundred and three million')
    end

    it 'converts 000 thousand to empty string' do
      expect(Wintr::WeightedDigitArray.new(%w[0 0 0], 1).to_s).to eq('')
    end

    it 'converts 000 million to empty string' do
      expect(Wintr::WeightedDigitArray.new(%w[0 0 0], 2).to_s).to eq('')
    end
  end
end
