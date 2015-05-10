require 'wintr/units'
require 'wintr/tens_units'
require 'wintr/hundreds_tens_units'

module Wintr
  class DigitArray
    def initialize(digits)
      @digits = digits
    end

    def to_s
      case @digits.size
      when 1
        Units.new(*@digits)
      when 2
        TensUnits.new(*@digits)
      when 3
        HundredsTensUnits.new(*@digits)
      end.to_s
    end
  end
end
