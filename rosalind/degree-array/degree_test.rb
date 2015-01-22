require 'minitest/autorun'
require_relative 'degree'

class DegreeTest < MiniTest::Unit::TestCase
  def test_has_name
    # rubocop:disable Lint/AmbiguousRegexpLiteral
    assert_match(/^[a-zA-Z]{2}\d{3}$/ , Robot.new.name)
    # rubocop:enable Lint/AmbiguousRegexpLiteral
  end

  def test_name_sticks
  end
end

