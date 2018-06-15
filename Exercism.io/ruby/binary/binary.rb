module BookKeeping
  VERSION = 3
end
# Binary
class Binary
  def self.to_decimal(num)
    raise ArgumentError if num =~ /[^01]/
    num.to_i.digits.each_with_index.sum { |digit, index| digit * 2**index }
  end
end
