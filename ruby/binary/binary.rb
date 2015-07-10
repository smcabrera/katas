class Binary
  attr_accessor :value

  def initialize(value)
    @value = value.match("^[01]*$") ? value : '0'
  end

  def to_decimal
    result = 0
    digit_place = value.length - 1
    value.each_char do |digit|
      result += digit.to_i * (2 ** digit_place)
      digit_place -= 1
    end
    result
  end
end


