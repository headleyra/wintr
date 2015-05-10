module Wintr
  class HundredsTensUnits
    def initialize(hundreds, tens, units)
      @hundreds, @tens, @units = hundreds, tens, units
    end

    def to_s
      return '' if @hundreds == '0' && @tens == '0' && @units == '0'
      "#{hundreds} #{and_join} #{tens_and_units}".strip
    end

    def hundreds
      Units.new(@hundreds).to_s + ' hundred' if @hundreds != '0'
    end

    def and_join
      'and' unless @tens == '0' && @units == '0'
    end

    def tens_and_units
      TensUnits.new(@tens, @units).to_s
    end
  end
end
