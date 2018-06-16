# Strain
class Array
  def keep
    each_with_object([]) { |el, res| res << el if yield(el) }
  end

  def discard
    keep { |el| !yield(el) }
  end
end
