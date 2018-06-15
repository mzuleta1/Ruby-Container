module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
# Sum
class SumOfMultiples
  def initialize(*mul)
    @mul = mul
  end

  def to(limit)
    sum = 0
    (0...limit).each { |i| sum += i if @mul.any? { |j| (i % j).zero? } }
    sum
  end
end
