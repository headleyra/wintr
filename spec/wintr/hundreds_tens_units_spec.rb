require 'spec_helper'

RSpec.describe Wintr::HundredsTensUnits do
  describe '#to_s' do
    it 'converts 000 to an empty string' do
      expect(Wintr::HundredsTensUnits.new('0', '0', '0').to_s).to eq('')
    end

    it 'converts 101' do
      expect(Wintr::HundredsTensUnits.new('1', '0', '1').to_s).to eq('one hundred and one')
    end

    it 'converts 900' do
      expect(Wintr::HundredsTensUnits.new('9', '0', '0').to_s).to eq('nine hundred')
    end

    it 'converts 070' do
      expect(Wintr::HundredsTensUnits.new('0', '7', '0').to_s).to eq('and seventy')
    end

    it 'converts 005' do
      expect(Wintr::HundredsTensUnits.new('0', '0', '5').to_s).to eq('and five')
    end
  end
end
