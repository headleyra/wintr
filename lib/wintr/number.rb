require 'wintr/weighted_digit_array'

module Wintr
  class Number
    def initialize(number)
      @number = number
    end

    def to_s
      return 'zero' if @number == 0

      number_in_groups_of_three.each_with_index.inject([]) do |number_as_words_array, (digit_array, power_of_thousand)|
        number_as_words_array.unshift(WeightedDigitArray.new(digit_array, power_of_thousand).to_s)
      end.join(' ').squeeze(' ').strip
    end

    def number_in_groups_of_three
      # 1,234,567 #=> [%w[5 6 7], %w[2 3 4], %w[1]]

      # TODO: Simplify!
      @number.to_s.chars.to_a.reverse.each_slice(3).inject([]) {|number_as_words_array, three_digit_array| number_as_words_array << three_digit_array.reverse}
    end
  end
end
