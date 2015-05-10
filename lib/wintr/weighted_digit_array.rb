require 'wintr/digit_array'

module Wintr
  class WeightedDigitArray
    def initialize(digit_array, power_of_thousand)
      @digit_array, @power_of_thousand = digit_array, power_of_thousand
    end

    def to_s
      [digit_array_in_words, power_of_thousand_in_words].join(' ').strip
    end

    def digit_array_in_words
      DigitArray.new(@digit_array).to_s
    end

    def power_of_thousand_in_words
      POWER_OF_THOUSAND[@power_of_thousand] if digit_array_in_words != ''
    end
  end
end
