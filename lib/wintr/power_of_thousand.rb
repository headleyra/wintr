module Wintr
  class PowerOfThousand
    POWER = {
      1 => 'thousand',
      2 => 'million'
    }

    def initialize(power)
      @power = power
    end

    def to_w
      POWER[@power] || ''
    end
  end
end

