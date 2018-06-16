# Prime
class PrimeFactors
  def self.for(num)
    arr = []
    i = 2
    while num != 1
      while (num % i).zero?
        num /= i
        arr << i
      end
      i += 1
    end
    arr
  end
end
