module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
# Leap
class Year
  def self.leap?(year)
    if (year % 400).zero?
      true
    elsif (year % 4).zero? && (year % 100) != 0
      true
    else
      false
    end
  end
end
