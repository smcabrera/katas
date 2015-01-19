class Primes
  def self.nth(n)
    results_array = []
    i = 0
    finished = false
    while finished == false
      i += 1
        if i.prime?
          results_array << i
        end
      if results_array.size == n or i == 10
        finished = true
      end
    end
    results_array[n]
  end
end

# Psuedocode
# What's the algorithm (at least the naive one) for determining if a number is prime? Well you'd have to iterate
# through each number 1 through...through what? Then you'd have to determine if that number can be divided by anything other than 1 and itself. Shit! That sounds like it could get really recursive...Let's give it a shot that way and then we can go back and figure out if there's a more efficient way.
#
# It turns out we already have a (presumably) efficient algorithm for determining if a number is prime or not,
# built right into ruby. Although it might be nice to learn how this is implemented, we may as well use what comes out of the box
#
#
# And now it's gone! What the hell! I know that there is a Prime class because I was looking at its source code. And now it seems to have vanished! What could be going on? I guess I could go and recompile ruby...bleh
#
#
