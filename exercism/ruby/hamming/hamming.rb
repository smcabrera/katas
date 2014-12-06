class Hamming
  def self.compute(strand1, strand2)
    strand_length = strand1.length
    distance = 0
    strand_length.times do |num|
      distance += ( strand1[num] == strand2[num] ? 0 : 1 )
      #distance += self.compare(strand1[num], strand2[num])
    end
    return distance
  end
end

