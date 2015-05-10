module Wintr
  class Units
    def initialize(units)
      @units = units
    end

    def to_s
      UNITS[@units]
    end
  end
end
