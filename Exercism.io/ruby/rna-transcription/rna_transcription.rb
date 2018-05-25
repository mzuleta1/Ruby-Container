module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
# Rna Transcription
class Complement
  def self.of_dna(rna)
    arr = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    rna.length.times do |x|
      return rna = '' if arr[rna[x]].nil?
      rna[x] = arr[rna[x]]
    end
    rna
  end
end
