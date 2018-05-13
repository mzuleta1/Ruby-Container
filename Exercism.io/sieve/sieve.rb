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
