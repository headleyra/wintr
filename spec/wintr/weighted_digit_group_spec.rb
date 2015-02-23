require 'spec_helper'

module Wintr
  describe WeightedDigitGroup do
    describe "#to_s" do
      it "should should convert 23 thousand" do
        WeightedDigitGroup.new(%w[2 1], 1).to_s.should == 'twenty one thousand'
      end
      it "should should convert 123 thousand" do
        WeightedDigitGroup.new(%w[1 2 3], 1).to_s.should == 'one hundred and twenty three thousand'
      end
      it "should should convert 103 million" do
        WeightedDigitGroup.new(%w[1 0 3], 2).to_s.should == 'one hundred and three million'
      end
      it "should should convert 000 thousand to empty string" do
        WeightedDigitGroup.new(%w[0 0 0], 1).to_s.should == ''
      end
      it "should should convert 000 million to empty string" do
        WeightedDigitGroup.new(%w[0 0 0], 2).to_s.should == ''
      end
    end
  end
end
