module Wintr
  class WordArray
    def initialize(array)
      @array = array
    end

    def to_w
      @array.join(' ').squeeze(' ').strip
    end
  end
end

