require 'wintr/one_digit_group'
require 'wintr/two_digit_group'
require 'wintr/three_digit_group'

module Wintr
  class DigitGroup
    def initialize(digits)
      @digits = digits
    end

    def to_w
      case @digits.size
      when 1
        OneDigitGroup.new(@digits[0]).to_w
      when 2
        TwoDigitGroup.new(@digits[0], @digits[1]).to_w
      when 3
        ThreeDigitGroup.new(@digits[0], @digits[1], @digits[2]).to_w
      end
    end
  end
end
