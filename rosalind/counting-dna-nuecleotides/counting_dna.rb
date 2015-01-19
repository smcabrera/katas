class DNA
  attr_accessor :nucleotide_string
  def initialize(nucleotide_string)
    @nucleotide_string = nucleotide_string
  end

  def count
    result = Array.new(4, 0)
    string = self.nucleotide_string
    string.each_char do |char|
      case char
      when 'A'
        result[0] += 1
      when 'C'
        result[1] += 1
      when 'G'
        result[2] += 1
      when 'T'
        result[3] += 1
      end
    end
    result
  end
end
