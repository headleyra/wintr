require 'spec_helper'

module Wintr
  describe WordArray do
    describe "#to_w" do
      it "should join it's array then strip and squeeze spaces" do
        WordArray.new([' foo     ', '    bar  ']).to_w.should == 'foo bar'
      end
    end
  end
end

