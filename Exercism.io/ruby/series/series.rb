# Series
class Series
  def initialize(str)
    @serie = str
  end

  def slices(num)
    len = @serie.length
    raise ArgumentError if num > len
    arr = []
    len.times { |x| arr << @serie[x, num] }
    arr.delete_if { |i| i.length != num }
    arr
  end
end
