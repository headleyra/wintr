require 'spec_helper'

module Wintr
  describe TwoDigitGroup do
    describe "#to_w" do
      it "should convert 00 to empty string" do
        TwoDigitGroup.new('0', '0').to_w.should == ''
      end
      it "should convert 01 to one" do
        TwoDigitGroup.new('0', '1').to_w.should == 'one'
      end
      it "should convert 09 to nine" do
        TwoDigitGroup.new('0', '9').to_w.should == 'nine'
      end
      it "should convert 10" do
        TwoDigitGroup.new('1', '0').to_w.should == 'ten'
      end
      it "should convert 11" do
        TwoDigitGroup.new('1', '1').to_w.should == 'eleven'
      end
      it "should convert 12" do
        TwoDigitGroup.new('1', '2').to_w.should == 'twelve'
      end
      it "should convert 13" do
        TwoDigitGroup.new('1', '3').to_w.should == 'thirteen'
      end
      it "should convert 14" do
        TwoDigitGroup.new('1', '4').to_w.should == 'fourteen'
      end
      it "should convert 15" do
        TwoDigitGroup.new('1', '5').to_w.should == 'fifteen'
      end
      it "should convert 16" do
        TwoDigitGroup.new('1', '6').to_w.should == 'sixteen'
      end
      it "should convert 17" do
        TwoDigitGroup.new('1', '7').to_w.should == 'seventeen'
      end
      it "should convert 18" do
        TwoDigitGroup.new('1', '8').to_w.should == 'eighteen'
      end
      it "should convert 19" do
        TwoDigitGroup.new('1', '9').to_w.should == 'nineteen'
      end
      it "should convert 20" do
        TwoDigitGroup.new('2', '0').to_w.should == 'twenty'
      end
      it "should convert 21" do
        TwoDigitGroup.new('2', '1').to_w.should == 'twenty one'
      end
      it "should convert 77" do
        TwoDigitGroup.new('7', '7').to_w.should == 'seventy seven'
      end
      it "should convert 99" do
        TwoDigitGroup.new('9', '9').to_w.should == 'ninety nine'
      end
    end
  end
end

