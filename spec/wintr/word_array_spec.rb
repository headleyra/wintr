require 'spec_helper'

describe Wintr::WordArray do
  describe "#to_s" do
    it "joins it's array then squeezes spaces" do
      Wintr::WordArray.new([' foo     ', '    bar  ']).to_s.should == 'foo bar'
    end
  end
end
