require 'spec_helper'

module Wintr

  describe PowerOfThousand do
    describe "#to_s" do
      it "should convert 0 to empty string" do
        PowerOfThousand.new(0).to_s.should == ''
      end
      it "should convert 1 into it's power-of-a-thousand equivalent" do
        PowerOfThousand.new(1).to_s.should == 'thousand'
      end
      it "should convert 2 into it's power-of-a-thousand equivalent" do
        PowerOfThousand.new(2).to_s.should == 'million'
      end
      it "should convert rubbish input into empty string" do
        PowerOfThousand.new('foo').to_s.should == ''
      end
    end
  end

end

