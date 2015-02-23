module Wintr
  class OneDigitGroup
    UNITS = {
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

    def initialize(units)
      @units = units
    end

    def to_s
      UNITS[@units]
    end
  end
end
