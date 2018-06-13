module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
# Run
class RunLengthEncoding
  def self.encode(input)
    input.gsub(/(\D)\1+/) { $&.length.to_s + Regexp.last_match(1) }
  end

  def self.decode(input)
    input.gsub(/(\d+)(\D)/) { Regexp.last_match(2) * Regexp.last_match(1).to_i }
  end
end
