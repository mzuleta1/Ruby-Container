require 'prime'
# Prime
class Prime
  def self.nth(num)
    raise ArgumentError if num.zero?
    pri = Prime.first num
    pri[-1]
  end
end
