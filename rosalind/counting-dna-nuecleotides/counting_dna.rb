class DNA
  attr_accessor :nucleotide_string
  def initialize(nucleotide_string)
    @nucleotide_string = nucleotide_string
  end

  def count
    result = {'A' => 0, 'C' => 0, 'G' => 0, 'T' => 0}
    string = self.nucleotide_string
    string.each_char do |char|
      result[char] += 1
    end
    result.values.to_a
  end
end
