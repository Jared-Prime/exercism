module BookKeeping
  VERSION = 3
end

class Hamming
  class << self
    def compute(string1, string2)
      type_check string1
      type_check string2
      length_check string1, string2

      distance string1, string2
    end

    def distance(string1, string2)
      0.upto(string1.length).count { |index| string1[index] != string2[index] }
    end

    private

    def length_check(string1, string2)
      fail ArgumentError, 'arguments must be same length!' unless string1.length == string2.length
    end

    def type_check(string)
      fail ArgumentError, 'arguments must be Strings!' unless string.is_a? String
    end
  end
end
