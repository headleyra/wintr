require 'spec_helper'

RSpec.describe Wintr::TensUnits do
  describe '#to_s' do
    it 'converts 00 to empty string' do
      expect(Wintr::TensUnits.new('0', '0').to_s).to eq('')
    end

    it 'converts 01' do
      expect(Wintr::TensUnits.new('0', '1').to_s).to eq('one')
    end

    it 'converts 02' do
      expect(Wintr::TensUnits.new('0', '2').to_s).to eq('two')
    end

    it 'converts 03' do
      expect(Wintr::TensUnits.new('0', '3').to_s).to eq('three')
    end

    it 'converts 04' do
      expect(Wintr::TensUnits.new('0', '4').to_s).to eq('four')
    end

    it 'converts 05' do
      expect(Wintr::TensUnits.new('0', '5').to_s).to eq('five')
    end

    it 'converts 06' do
      expect(Wintr::TensUnits.new('0', '6').to_s).to eq('six')
    end

    it 'converts 07' do
      expect(Wintr::TensUnits.new('0', '7').to_s).to eq('seven')
    end

    it 'converts 08' do
      expect(Wintr::TensUnits.new('0', '8').to_s).to eq('eight')
    end

    it 'converts 09' do
      expect(Wintr::TensUnits.new('0', '9').to_s).to eq('nine')
    end

    it 'converts 10' do
      expect(Wintr::TensUnits.new('1', '0').to_s).to eq('ten')
    end

    it 'converts 11' do
      expect(Wintr::TensUnits.new('1', '1').to_s).to eq('eleven')
    end

    it 'converts 12' do
      expect(Wintr::TensUnits.new('1', '2').to_s).to eq('twelve')
    end

    it 'converts 13' do
      expect(Wintr::TensUnits.new('1', '3').to_s).to eq('thirteen')
    end

    it 'converts 14' do
      expect(Wintr::TensUnits.new('1', '4').to_s).to eq('fourteen')
    end

    it 'converts 15' do
      expect(Wintr::TensUnits.new('1', '5').to_s).to eq('fifteen')
    end

    it 'converts 16' do
      expect(Wintr::TensUnits.new('1', '6').to_s).to eq('sixteen')
    end

    it 'converts 17' do
      expect(Wintr::TensUnits.new('1', '7').to_s).to eq('seventeen')
    end

    it 'converts 18' do
      expect(Wintr::TensUnits.new('1', '8').to_s).to eq('eighteen')
    end

    it 'converts 19' do
      expect(Wintr::TensUnits.new('1', '9').to_s).to eq('nineteen')
    end

    it 'converts 20' do
      expect(Wintr::TensUnits.new('2', '0').to_s).to eq('twenty')
    end

    it 'converts 21' do
      expect(Wintr::TensUnits.new('2', '1').to_s).to eq('twenty one')
    end

    it 'converts 77' do
      expect(Wintr::TensUnits.new('7', '7').to_s).to eq('seventy seven')
    end

    it 'converts 99' do
      expect(Wintr::TensUnits.new('9', '9').to_s).to eq('ninety nine')
    end
  end
end
