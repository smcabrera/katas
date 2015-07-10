class Binary
  attr_accessor :value

  def initialize(value)
    @value = value.match("^[01]*$") ? value : '0'
  end

  def to_decimal
    result = 0
    value.split("").each_with_index { |item, index|
      result += item.to_i * (2 ** (value.length - index - 1))
    }
    result
  end
end


