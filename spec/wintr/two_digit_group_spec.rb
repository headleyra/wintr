require 'spec_helper'

module Wintr
  describe TwoDigitGroup do
    describe "#to_s" do
      it "converts 00 to an empty string" do
        TwoDigitGroup.new('0', '0').to_s.should == ''
      end
      it "converts 01 to one" do
        TwoDigitGroup.new('0', '1').to_s.should == 'one'
      end
      it "converts 09 to nine" do
        TwoDigitGroup.new('0', '9').to_s.should == 'nine'
      end
      it "converts 10" do
        TwoDigitGroup.new('1', '0').to_s.should == 'ten'
      end
      it "converts 11" do
        TwoDigitGroup.new('1', '1').to_s.should == 'eleven'
      end
      it "converts 12" do
        TwoDigitGroup.new('1', '2').to_s.should == 'twelve'
      end
      it "converts 13" do
        TwoDigitGroup.new('1', '3').to_s.should == 'thirteen'
      end
      it "converts 14" do
        TwoDigitGroup.new('1', '4').to_s.should == 'fourteen'
      end
      it "converts 15" do
        TwoDigitGroup.new('1', '5').to_s.should == 'fifteen'
      end
      it "converts 16" do
        TwoDigitGroup.new('1', '6').to_s.should == 'sixteen'
      end
      it "converts 17" do
        TwoDigitGroup.new('1', '7').to_s.should == 'seventeen'
      end
      it "converts 18" do
        TwoDigitGroup.new('1', '8').to_s.should == 'eighteen'
      end
      it "converts 19" do
        TwoDigitGroup.new('1', '9').to_s.should == 'nineteen'
      end
      it "converts 20" do
        TwoDigitGroup.new('2', '0').to_s.should == 'twenty'
      end
      it "converts 21" do
        TwoDigitGroup.new('2', '1').to_s.should == 'twenty one'
      end
      it "converts 77" do
        TwoDigitGroup.new('7', '7').to_s.should == 'seventy seven'
      end
      it "converts 99" do
        TwoDigitGroup.new('9', '9').to_s.should == 'ninety nine'
      end
    end
  end
end

