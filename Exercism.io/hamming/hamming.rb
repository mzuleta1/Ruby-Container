# Hamming class
class Hamming
  def self.compute(dna1, dna2)
    count = 0
    raise ArgumentError unless dna1.length.eql? dna2.length
    if dna1.length.eql? dna2.length
      dna1.length.times do |x|
        count += 1 if dna1[x] != dna2[x]
      end
    end
    count
  end
end
