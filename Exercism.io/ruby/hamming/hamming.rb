module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
# Hamming class
class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError if dna1.length != dna2.length
    (0...dna1.length).count { |i| dna1[i] != dna2[i] }
  end
end
