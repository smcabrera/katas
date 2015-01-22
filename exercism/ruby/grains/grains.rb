class Grains
  attr_accessor :square

  def square(n)
    2 ** (n - 1)
  end

  def total
    result = 0
    (1..64).each do |i|
      result += 2 ** (i - 1)
    end
    result
  end
end
