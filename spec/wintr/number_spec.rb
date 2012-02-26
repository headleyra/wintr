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
    end
  end

end

