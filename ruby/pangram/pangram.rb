module BookKeeping
  VERSION = 2
end

class Pangram
  CHARS = ('a'..'z').to_a.freeze

  class << self
    def is_pangram?(sentence)
      sentence_chars(sentence).size == 26
    end

    def sentence_chars(sentence)
      (sentence.downcase.chars & CHARS)
    end
  end
end
