module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
# Leap
class Year
  def self.leap?(year)
    return true if (year % 400).zero?
    return true if (year % 4).zero? && (year % 100).nonzero?
    false
  end
end
