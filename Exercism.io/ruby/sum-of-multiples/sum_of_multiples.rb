module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
# Sum
class SumOfMultiples
  def initialize(*mul)
    @mul = mul
  end

  def to(limit)
    (0...limit).inject { |sum, i| multi(i) ? sum + i : sum }
  end

  def multi(num)
    @mul.any? { |j| (num % j).zero? }
  end
end
