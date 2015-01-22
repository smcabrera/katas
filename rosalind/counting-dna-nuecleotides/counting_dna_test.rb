
require 'minitest/autorun'
require_relative 'counting_dna'

class DNATest < MiniTest::Unit::TestCase
  def test_small_string
    assert_equal([1, 1, 1, 1], DNA.new("GATC").count)
  end

  def test_long_string
    string = 'AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC'
    assert_equal([20, 12, 17, 21], DNA.new(string).count)
  end
end

