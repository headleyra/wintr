require 'spec_helper'

module Wintr

  describe DigitGroup do
    describe "#to_s" do
      it "should convert 0 to empty string" do
        DigitGroup.new(['0']).to_s.should == ''
      end
      it "should convert 9" do
        DigitGroup.new(['9']).to_s.should == 'nine'
      end
      it "should convert 10" do
        DigitGroup.new(%w[1 0]).to_s.should == 'ten'
      end
      it "should convert 19" do
        DigitGroup.new(%w[1 9]).to_s.should == 'nineteen'
      end
      it "should convert 20" do
        DigitGroup.new(%w[2 0]).to_s.should == 'twenty'
      end
      it "should convert 702" do
        DigitGroup.new(%w[7 0 2]).to_s.should == 'seven hundred and two'
      end
    end
  end

end
