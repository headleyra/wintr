require 'spec_helper'

def conversions
  {
    0 => 'zero',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',

    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',

    20 => 'twenty',
    21 => 'twenty one',
    30 => 'thirty',
    32 => 'thirty two',
    40 => 'forty',
    43 => 'forty three',
    50 => 'fifty',
    54 => 'fifty four',
    60 => 'sixty',
    65 => 'sixty five',
    70 => 'seventy',
    76 => 'seventy six',
    80 => 'eighty',
    87 => 'eighty seven',
    90 => 'ninety',
    98 => 'ninety eight',

    100 => 'one hundred',
    102 => 'one hundred and two',
    115 => 'one hundred and fifteen',

    5_000 => 'five thousand',
    5_001 => 'five thousand and one',
    5_010 => 'five thousand and ten',
    5_011 => 'five thousand and eleven',
    5_100 => 'five thousand one hundred',
    5_101 => 'five thousand one hundred and one',
    5_110 => 'five thousand one hundred and ten',
    5_111 => 'five thousand one hundred and eleven',

    # 17_011_007 => 'seventeen million eleven thousand and seven',
    # 17_011_075 => 'seventeen million eleven thousand and seven five',
    # 17_011_705 => 'seventeen million eleven thousand seven hundred and five',

    56_945_781 => 'fifty six million nine hundred and forty five thousand seven hundred and eighty one',
    126_000_010 => 'one hundred and twenty six million and ten',
    999_999_999 => 'nine hundred and ninety nine million nine hundred and ninety nine thousand nine hundred and ninety nine',

    9 * (10**9) + 9 => 'nine billion and nine',
    12 * (10**12) + 12 => 'twelve trillion and twelve',
    15 * (10**15) + 15 => 'fifteen quadrillion and fifteen',
    18 * (10**18) + 18 => 'eighteen quintillion and eighteen',
    21 * (10**21) + 21 => 'twenty one sextillion and twenty one',
    24 * (10**24) + 24 => 'twenty four septillion and twenty four',
    27 * (10**27) + 27 => 'twenty seven octillion and twenty seven',
    30 * (10**30) + 30 => 'thirty nonillion and thirty',
    33 * (10**33) + 33 => 'thirty three decillion and thirty three',
    36 * (10**36) + 36 => 'thirty six undecillion and thirty six',
    39 * (10**39) + 39 => 'thirty nine duodecillion and thirty nine',
    42 * (10**42) + 42 => 'forty two tredecillion and forty two',
    45 * (10**45) + 45 => 'forty five quattuordecillion and forty five',
    48 * (10**48) + 48 => 'forty eight quindecillion and forty eight',
    51 * (10**51) + 51 => 'fifty one sexdecillion and fifty one',
    54 * (10**54) + 54 => 'fifty four septendecillion and fifty four',
    57 * (10**57) + 57 => 'fifty seven octodecillion and fifty seven',
    60 * (10**60) + 60 => 'sixty novemdecillion and sixty',
    63 * (10**63) + 63 => 'sixty three vigintillion and sixty three',
    66 * (10**66) + 66 => 'sixty six unvigintillion and sixty six',
    69 * (10**69) + 69 => 'sixty nine duovigintillion and sixty nine',
    72 * (10**72) + 72 => 'seventy two trevigintillion and seventy two',
    75 * (10**75) + 75 => 'seventy five quattuorvigintillion and seventy five',
    78 * (10**78) + 78 => 'seventy eight quinvigintillion and seventy eight',
    81 * (10**81) + 81 => 'eighty one sexvigintillion and eighty one',
    84 * (10**84) + 84 => 'eighty four septenvigintillion and eighty four',
    87 * (10**87) + 87 => 'eighty seven octovigintillion and eighty seven',
    90 * (10**90) + 90 => 'ninety novemvigintillion and ninety',
    93 * (10**93) + 93 => 'ninety three trigintillion and ninety three',
    96 * (10**96) + 96 => 'ninety six untrigintillion and ninety six',
    99 * (10**99) + 99 => 'ninety nine duotrigintillion and ninety nine'
  }
end

RSpec.describe Wintr::Number do
  describe "#to_s" do
    conversions.each do |integer, word|
      it "converts #{integer} to #{word}" do
        expect(Wintr::Number.new(integer).to_s).to eq(word)
      end
    end
  end
end
