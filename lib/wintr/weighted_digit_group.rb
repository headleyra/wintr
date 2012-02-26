require 'wintr/digit_group'
require 'wintr/power_of_thousand'
require 'wintr/word_array'

module Wintr
  class WeightedDigitGroup
    def initialize(digit_group, power_of_thousand)
      @digit_group, @power_of_thousand = digit_group, power_of_thousand
    end

    def to_w
      base_digit_group_in_words = DigitGroup.new(@digit_group).to_w
      power_of_thousand_in_words = PowerOfThousand.new(@power_of_thousand).to_w if base_digit_group_in_words != ''
      WordArray.new([base_digit_group_in_words, power_of_thousand_in_words]).to_w
    end
  end
end
