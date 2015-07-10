require 'minitest/autorun'
require_relative 'primes'

class TestPrimes < MiniTest::Unit::TestCase
  def test_first
    assert_equal 2, Primes.nth(1)
  end

  def test_second
    assert_equal 3, Primes.nth(2)
  end

  def test_sixth_prime
    assert_equal 13, Primes.nth(6)
  end

  def test_big_prime
    assert_equal 104_743, Primes.nth(10_001)
  end

  def test_weird_case
    assert_raises ArgumentError do
      Primes.nth(0)
    end
  end
end
