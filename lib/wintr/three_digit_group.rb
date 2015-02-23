module Wintr
  class ThreeDigitGroup
    def initialize(hundreds, tens, units)
      @hundreds, @tens, @units = hundreds, tens, units
    end

    def to_s
      word_array = []
      if @hundreds == '0' && @tens == '0' && @units == '0'
        ''
      else
        word_array << OneDigitGroup.new(@hundreds).to_s
        word_array << 'hundred' if @hundreds != '0'
        word_array << 'and' unless @tens == '0' && @units == '0'
        word_array << TwoDigitGroup.new(@tens, @units).to_w
        WordArray.new(word_array).to_w
      end
    end
  end
end

