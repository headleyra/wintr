require 'spec_helper'

module Wintr
  describe OneDigitGroup do
    describe "#to_w" do
      it "should convert 0 to empty string" do
        OneDigitGroup.new('0').to_w.should == ''
      end
      it "should convert 1" do
        OneDigitGroup.new('1').to_w.should == 'one'
      end
      it "should convert 2" do
        OneDigitGroup.new('2').to_w.should == 'two'
      end
      it "should convert 3" do
        OneDigitGroup.new('3').to_w.should == 'three'
      end
      it "should convert 4" do
        OneDigitGroup.new('4').to_w.should == 'four'
      end
      it "should convert 5" do
        OneDigitGroup.new('5').to_w.should == 'five'
      end
      it "should convert 6" do
        OneDigitGroup.new('6').to_w.should == 'six'
      end
      it "should convert 7" do
        OneDigitGroup.new('7').to_w.should == 'seven'
      end
      it "should convert 8" do
        OneDigitGroup.new('8').to_w.should == 'eight'
      end
      it "should convert 9" do
        OneDigitGroup.new('9').to_w.should == 'nine'
      end
    end
  end
end

