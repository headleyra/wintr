require 'spec_helper'

def single_digits
  {
    '0' => '',
    '1' => 'one',
    '2' => 'two',
    '3' => 'three',
    '4' => 'four',
    '5' => 'five',
    '6' => 'six',
    '7' => 'seven',
    '8' => 'eight',
    '9' => 'nine'
  }
end

RSpec.describe Wintr::Units do
  describe '#to_s' do
    single_digits.each do |digit_string, word|
      it "converts #{digit_string} to #{word}" do
        expect(Wintr::Units.new(digit_string).to_s).to eq(word)
      end
    end
  end
end
