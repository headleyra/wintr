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

describe Wintr::OneDigitGroup do
  describe "#to_s" do
    single_digits.each do |digit_string, word|
      it "converts #{digit_string} to #{word}" do
        Wintr::OneDigitGroup.new(digit_string).to_s.should == word
      end
    end
  end
end
