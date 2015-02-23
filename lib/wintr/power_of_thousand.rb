module Wintr
  class PowerOfThousand
    POWER = {
      1 => 'thousand',
      2 => 'million',
      3 => 'billion',
      4 => 'trillion',
      5 => 'quadrillion',
      6 => 'quintillion',
      7 => 'sextillion',
      8 => 'septillion',
      9 => 'octillion',
      10 => 'nonillion',
      11 => 'decillion',
      12 => 'undecillion',
      13 => 'duodecillion',
      14 => 'tredecillion',
      15 => 'quattuordecillion',
      16 => 'quindecillion',
      17 => 'sexdecillion',
      18 => 'septendecillion',
      19 => 'octodecillion',
      20 => 'novemdecillion',
      21 => 'vigintillion',
      22 => 'unvigintillion',
      23 => 'duovigintillion',
      24 => 'trevigintillion',
      25 => 'quattuorvigintillion',
      26 => 'quinvigintillion',
      27 => 'sexvigintillion',
      28 => 'septenvigintillion',
      29 => 'octovigintillion',
      30 => 'novemvigintillion',
      31 => 'trigintillion',
      32 => 'untrigintillion',
      33 => 'duotrigintillion'
    }

    def initialize(power)
      @power = power
    end

    def to_s
      POWER[@power] || ''
    end
  end
end

