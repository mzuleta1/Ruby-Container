module BookKeeping
  VERSION = 1 # Where the version number matches the one in the test.
end
# Sieve class
class Sieve
  def initialize(number)
    @prim = (2..number.to_i).to_a
  end

  def primes
    @prim.each do |x|
      @prim.delete_if { |i| i > x && (i % x).zero? }
    end
    @prim
  end
end
