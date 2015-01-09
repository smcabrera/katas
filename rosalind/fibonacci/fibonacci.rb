class Fibonacci
  def self.output(n)
    if n == 0
      return 0
    else
      results = [0, 1]
    end

    (2..n).each do |i|
      results << results[i-1] + results[i-2]
    end

    results[n]
  end
end
