module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end
# Gigasecond Class
class Gigasecond
  def self.from(date)
    date + 10**9
  end
end
