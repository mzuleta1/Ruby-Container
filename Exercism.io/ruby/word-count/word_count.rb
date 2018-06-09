module BookKeeping
  VERSION = 1
end
# Word Count
class Phrase
  def initialize(str)
    @phrase = str
  end

  def word_count
    list = Hash.new(0)
    @phrase.downcase.scan(/\b[\w']+\b/).each { |i| list[i] += 1 }
    list
  end
end
