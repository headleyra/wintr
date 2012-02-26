require 'spec_helper'

module Wintr

  describe Number do
    describe "#to_w" do
      it "should convert 1" do
        Number.new(1).to_w.should == 'one'
      end
      it "should convert 27" do
        Number.new(27).to_w.should == 'twenty seven'
      end
      it "should convert 115" do
        Number.new(115).to_w.should == 'one hundred and fifteen'
      end
      it "should convert 3,700" do
        Number.new(3_700).to_w.should == 'three thousand seven hundred'
      end
      it "should convert 56,945,781" do
        Number.new(56_945_781).to_w.should == 'fifty six million nine hundred and forty five thousand seven hundred and eighty one'
      end
      it "should convert 126,000,010" do
        Number.new(126_000_010).to_w.should == 'one hundred and twenty six million and ten'
      end
      it "should convert 999,999,999" do
        Number.new(999_999_999).to_w.should == 'nine hundred and ninety nine million nine hundred and ninety nine thousand nine hundred and ninety nine'
      end

      # extra tests
      it "should convert 9" do
        Number.new(9).to_w.should == 'nine'
      end
      it "should convert 10" do
        Number.new(10).to_w.should == 'ten'
      end
      it "should convert 11" do
        Number.new(11).to_w.should == 'eleven'
      end
      it "should convert 12" do
        Number.new(12).to_w.should == 'twelve'
      end
      it "should convert 13" do
        Number.new(13).to_w.should == 'thirteen'
      end
      it "should convert 14" do
        Number.new(14).to_w.should == 'fourteen'
      end
      it "should convert 15" do
        Number.new(15).to_w.should == 'fifteen'
      end
      it "should convert 16" do
        Number.new(16).to_w.should == 'sixteen'
      end
      it "should convert 17" do
        Number.new(17).to_w.should == 'seventeen'
      end
      it "should convert 18" do
        Number.new(18).to_w.should == 'eighteen'
      end
      it "should convert 19" do
        Number.new(19).to_w.should == 'nineteen'
      end
      it "should convert 20" do
        Number.new(20).to_w.should == 'twenty'
      end
      it "should convert 21" do
        Number.new(21).to_w.should == 'twenty one'
      end
      it "should convert 99" do
        Number.new(99).to_w.should == 'ninety nine'
      end
      it "should convert 100" do
        Number.new(100).to_w.should == 'one hundred'
      end
      it "should convert 102" do
        Number.new(102).to_w.should == 'one hundred and two'
      end
      it "should convert 3,000" do
        Number.new(3000).to_w.should == 'three thousand'
      end
      it "should convert 3,007" do
        Number.new(3007).to_w.should == 'three thousand and seven'
      end

      # silly big number testing starts here :-)
      it "should convert billions" do
        Number.new(9 * (10**9) + 9).to_w.should == 'nine billion and nine'
      end
      it "should convert trillions" do
        Number.new(12 * (10**12) + 12).to_w.should == 'twelve trillion and twelve'
      end
      it "should convert quadrillions" do
        Number.new(15 * (10**15) + 15).to_w.should == 'fifteen quadrillion and fifteen'
      end
      it "should convert quintillions" do
        Number.new(18 * (10**18) + 18).to_w.should == 'eighteen quintillion and eighteen'
      end
      it "should convert sextillions" do
        Number.new(21 * (10**21) + 21).to_w.should == 'twenty one sextillion and twenty one'
      end
      it "should convert septillions" do
        Number.new(24 * (10**24) + 24).to_w.should == 'twenty four septillion and twenty four'
      end
      it "should convert octillions" do
        Number.new(27 * (10**27) + 27).to_w.should == 'twenty seven octillion and twenty seven'
      end
      it "should convert nonillions" do
        Number.new(30 * (10**30) + 30).to_w.should == 'thirty nonillion and thirty'
      end
      it "should convert decillion" do
        Number.new(33 * (10**33) + 33).to_w.should == 'thirty three decillion and thirty three'
      end
      it "should convert undecillions" do
        Number.new(36 * (10**36) + 36).to_w.should == 'thirty six undecillion and thirty six'
      end
      it "should convert duodecillions" do
        Number.new(39 * (10**39) + 39).to_w.should == 'thirty nine duodecillion and thirty nine'
      end
      it "should convert tredecillions" do
        Number.new(42 * (10**42) + 42).to_w.should == 'forty two tredecillion and forty two'
      end
      it "should convert quattuordecillions" do
        Number.new(45 * (10**45) + 45).to_w.should == 'forty five quattuordecillion and forty five'
      end
      it "should convert quindecillions" do
        Number.new(48 * (10**48) + 48).to_w.should == 'forty eight quindecillion and forty eight'
      end
      it "should convert sexdecillions" do
        Number.new(51 * (10**51) + 51).to_w.should == 'fifty one sexdecillion and fifty one'
      end
      it "should convert septendecillions" do
        Number.new(54 * (10**54) + 54).to_w.should == 'fifty four septendecillion and fifty four'
      end
      it "should convert octodecillions" do
        Number.new(57 * (10**57) + 57).to_w.should == 'fifty seven octodecillion and fifty seven'
      end
      it "should convert novemdecillions" do
        Number.new(60 * (10**60) + 60).to_w.should == 'sixty novemdecillion and sixty'
      end
      it "should convert vigintillions" do
        Number.new(63 * (10**63) + 63).to_w.should == 'sixty three vigintillion and sixty three'
      end
      it "should convert unvigintillions" do
        Number.new(66 * (10**66) + 66).to_w.should == 'sixty six unvigintillion and sixty six'
      end
      it "should convert duovigintillions" do
        Number.new(69 * (10**69) + 69).to_w.should == 'sixty nine duovigintillion and sixty nine'
      end
      it "should convert trevigintillions" do
        Number.new(72 * (10**72) + 72).to_w.should == 'seventy two trevigintillion and seventy two'
      end
      it "should convert quattuorvigintillions" do
        Number.new(75 * (10**75) + 75).to_w.should == 'seventy five quattuorvigintillion and seventy five'
      end
      it "should convert quinvigintillions" do
        Number.new(78 * (10**78) + 78).to_w.should == 'seventy eight quinvigintillion and seventy eight'
      end
      it "should convert sexvigintillions" do
        Number.new(81 * (10**81) + 81).to_w.should == 'eighty one sexvigintillion and eighty one'
      end
      it "should convert septenvigintillions" do
        Number.new(84 * (10**84) + 84).to_w.should == 'eighty four septenvigintillion and eighty four'
      end
      it "should convert octovigintillions" do
        Number.new(87 * (10**87) + 87).to_w.should == 'eighty seven octovigintillion and eighty seven'
      end
      it "should convert novemvigintillions" do
        Number.new(90 * (10**90) + 90).to_w.should == 'ninety novemvigintillion and ninety'
      end
      it "should convert trigintillions" do
        Number.new(93 * (10**93) + 93).to_w.should == 'ninety three trigintillion and ninety three'
      end
      it "should convert untrigintillions" do
        Number.new(96 * (10**96) + 96).to_w.should == 'ninety six untrigintillion and ninety six'
      end
      it "should convert duotrigintillions" do
        Number.new(99 * (10**99) + 99).to_w.should == 'ninety nine duotrigintillion and ninety nine'
      end
    end
  end

end

