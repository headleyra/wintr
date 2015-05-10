require 'spec_helper'

RSpec.describe Wintr::DigitArray do
  describe '#to_s' do
    it 'converts 0 to an empty string' do
      expect(Wintr::DigitArray.new(['0']).to_s).to eq('')
    end

    it 'converts 9' do
      expect(Wintr::DigitArray.new(['9']).to_s).to eq('nine')
    end

    it 'converts 10' do
      expect(Wintr::DigitArray.new(%w[1 0]).to_s).to eq('ten')
    end

    it 'converts 19' do
      expect(Wintr::DigitArray.new(%w[1 9]).to_s).to eq('nineteen')
    end

    it 'converts 20' do
      expect(Wintr::DigitArray.new(%w[2 0]).to_s).to eq('twenty')
    end

    it 'converts 702' do
      expect(Wintr::DigitArray.new(%w[7 0 2]).to_s).to eq('seven hundred and two')
    end
  end
end
