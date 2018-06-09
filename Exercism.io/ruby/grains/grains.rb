module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
# Grains
class Grains
  def self.square(num)
    raise ArgumentError unless num.between?(1, 64)
    2**(num - 1)
  end

  def self.total
    (1..64).inject { |sum, n| sum + square(n) }
  end
end
