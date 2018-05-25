module BookKeeping
  VERSION = 6 # Where the version number matches the one in the test.
end
# Pangram Class
class Pangram
  def self.pangram?(phrase)
    p = phrase.downcase
    ('a'..'z').all? { |x| p.include? x }
  end
end
