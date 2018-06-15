module BookKeeping
  VERSION = 1
end
# Accumulate
class Array
  def accumulate
    each_with_object([]) {|method, res| res << yield(method)}
  end
end
