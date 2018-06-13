module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
# Prime
class Prime
  def self.nth(num)
    raise ArgumentError if num <= 0
    count = 0
    n = 2
    while count != num
      count += 1 unless prime?(n)
      n += 1
    end
    n - 1
  end

  class << self
    private def prime?(num)
      (2..Math.sqrt(num)).any? { |x| (num % x).zero? }
    end
  end
end
