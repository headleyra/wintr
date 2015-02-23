module Wintr
  class TwoDigitGroup
    TEN_TO_NINETEEN = {
      '10' => 'ten',
      '11' => 'eleven',
      '12' => 'twelve',
      '13' => 'thirteen',
      '14' => 'fourteen',
      '15' => 'fifteen',
      '16' => 'sixteen',
      '17' => 'seventeen',
      '18' => 'eighteen',
      '19' => 'nineteen'
    }
    TENS = {
      '2' => 'twenty',
      '3' => 'thirty',
      '4' => 'forty',
      '5' => 'fifty',
      '6' => 'sixty',
      '7' => 'seventy',
      '8' => 'eighty',
      '9' => 'ninety'
    }

    def initialize(tens, units)
      @tens, @units = tens, units
    end

    def to_w
      word_array = []

      if @tens == '1'
        TEN_TO_NINETEEN[@tens + @units]
      elsif @tens == '0' && @units == '0'
        ''
      else
        word_array << TENS[@tens]
        word_array << OneDigitGroup.new(@units).to_s
        WordArray.new(word_array).to_w
      end
    end
  end
end

