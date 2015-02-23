require 'spec_helper'

module Wintr
  describe ThreeDigitGroup do
    describe "#to_s" do
      it "converts 000 to an empty string" do
        ThreeDigitGroup.new('0', '0', '0').to_s.should == ''
      end
      it "converts 101" do
        ThreeDigitGroup.new('1', '0', '1').to_s.should == 'one hundred and one'
      end
      it "converts 900" do
        ThreeDigitGroup.new('9', '0', '0').to_s.should == 'nine hundred'
      end
      it "converts 070" do
        ThreeDigitGroup.new('0', '7', '0').to_s.should == 'and seventy'
      end
      it "converts 005" do
        ThreeDigitGroup.new('0', '0', '5').to_s.should == 'and five'
      end
    end
  end
end
