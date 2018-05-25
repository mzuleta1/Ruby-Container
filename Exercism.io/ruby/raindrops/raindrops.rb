module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
# Raindrops Class
class Raindrops
  def self.convert(num)
    arr = { 3 => 'Pling', 5 => 'Plang', 7 => 'Plong' }
    res = ''
    x = 0
    while x < 3
      res += arr[arr.keys[x]] if (num.to_i % arr.keys[x]).zero?
      x += 1
    end
    res = num.to_s if res == ''
    res
  end
end
