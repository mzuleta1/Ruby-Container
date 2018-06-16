module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
# Trinary
class Trinary
  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 if @num =~ /[^012]/
    @num.to_i.digits.each_with_index.sum { |d, i| d * (3**i) }
  end
end
