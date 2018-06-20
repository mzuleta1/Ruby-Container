module BookKeeping
  VERSION = 2 # Where the version number matches the one in the test.
end
# Anagram
class Anagram
  def initialize(word)
    @word = word
  end

  def match(words)
    w1 = @word.downcase
    words.select do |arr|
      w2 = arr.downcase
      w2.split(//).sort == w1.split(//).sort && w2 != w1
    end
  end
end
