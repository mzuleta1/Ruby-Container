module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
# Squares Class
class Squares
  @num = 0

  def initialize(number)
    @num = number.to_i
  end

  def square_of_sum
    sum = 0
    @num.times do |x|
      sum += (x + 1)
    end
    sum**2
  end

  def sum_of_squares
    sum = 0
    @num.times do |x|
      sum += (x + 1)**2
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
