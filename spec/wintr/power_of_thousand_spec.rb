require 'spec_helper'

module Wintr

  describe PowerOfThousand do
    describe "#to_w" do
      it "should convert 0 to empty string" do
        PowerOfThousand.new(0).to_w.should == ''
      end
      it "should convert 1 into it's power-of-a-thousand equivalent" do
        PowerOfThousand.new(1).to_w.should == 'thousand'
      end
      it "should convert 2 into it's power-of-a-thousand equivalent" do
        PowerOfThousand.new(2).to_w.should == 'million'
      end
      it "should convert rubbish input into empty string" do
        PowerOfThousand.new('foo').to_w.should == ''
      end
    end
  end

end

