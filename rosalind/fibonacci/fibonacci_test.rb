require 'minitest/autorun'
require_relative 'fibonacci'

class FibonacciTest < MiniTest::Unit::TestCase

  def test_0
    assert_equal Fibonacci.output(0), 0
  end

  def test_1
    assert_equal Fibonacci.output(1), 1
  end

  def test_2
    assert_equal Fibonacci.output(2), 1
  end

  def test_5
    assert_equal Fibonacci.output(5), 5
  end

  def test_10
    assert_equal Fibonacci.output(10), 55
  end

  def test_25
    assert_equal Fibonacci.output(25), 46368
  end

end
