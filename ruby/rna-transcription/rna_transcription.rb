module BookKeeping
  VERSION = 4
end

class Complement
  COMPLEMENTS = {
    'C' => 'G',
    'G' => 'C',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  class << self
    def of_dna(strand)
      strand.each_char.map do |acid|
        comp = COMPLEMENTS[acid]

        return '' if comp.nil? # no RNA transcription possible

        comp
      end.join
    end
  end
end
