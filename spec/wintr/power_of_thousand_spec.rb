require 'spec_helper'

module Wintr

  describe PowerOfThousand do
    describe "#to_s" do
      it "converts 0 to an empty string" do
        PowerOfThousand.new(0).to_s.should == ''
      end
      it "converts 1 into it's power-of-a-thousand equivalent" do
        PowerOfThousand.new(1).to_s.should == 'thousand'
      end
      it "converts 2 into it's power-of-a-thousand equivalent" do
        PowerOfThousand.new(2).to_s.should == 'million'
      end
      it "converts rubbish input into empty string" do
        PowerOfThousand.new('foo').to_s.should == ''
      end
    end
  end

end

