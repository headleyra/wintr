require 'wintr/weighted_digit_group'
require 'wintr/word_array'

module Wintr
  class Number
    def initialize(number)
      @number = number
    end

    def to_w
      return 'zero' if @number == 0

      word_array = []
      digit_array = @number.to_s.chars.to_a
      power_of_thousand = 0

      until digit_array == [] do
        digit_group = digit_array.pop(3)
        word_array.unshift(WeightedDigitGroup.new(digit_group, power_of_thousand).to_w)
        power_of_thousand += 1
      end
      WordArray.new(word_array).to_w
    end
  end
end
