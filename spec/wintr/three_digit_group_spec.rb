require 'spec_helper'

module Wintr
  describe ThreeDigitGroup do
    describe "#to_w" do
      it "should convert 000 to empty string" do
        ThreeDigitGroup.new('0', '0', '0').to_w.should == ''
      end
      it "should convert 101" do
        ThreeDigitGroup.new('1', '0', '1').to_w.should == 'one hundred and one'
      end
      it "should convert 900" do
        ThreeDigitGroup.new('9', '0', '0').to_w.should == 'nine hundred'
      end
      it "should convert 070" do
        ThreeDigitGroup.new('0', '7', '0').to_w.should == 'and seventy'
      end
      it "should convert 005" do
        ThreeDigitGroup.new('0', '0', '5').to_w.should == 'and five'
      end
    end
  end
end

