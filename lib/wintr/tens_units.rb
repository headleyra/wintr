module Wintr
  class TensUnits
    def initialize(tens, units)
      @tens, @units = tens, units
    end

    def to_s
      return '' if @tens == '0' && @units == '0'
      return TEN_TO_NINETEEN[@tens + @units] if @tens == '1'
      "#{TENS[@tens]} #{Units.new(@units)}".strip
    end
  end
end
