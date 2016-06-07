module BookKeeping
  VERSION = 3
end

class Gigasecond
  GIGASECOND = (10**9).freeze

  class << self
    def from(time)
      time + GIGASECOND
    end
  end
end
