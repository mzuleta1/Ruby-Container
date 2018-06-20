module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
# Beer
class BeerSong
  def initialize; end

  def verse(num)
    case num
    when 2
      phrasetwo?
    when 1
      phraseone?
    when 0
      phrasezero?
    else
      phrase?(num)
    end
  end

  def verses(start, finish)
    res = ''
    start.downto(finish + 1) { |i| res += verse(i) + "\n" }
    res += verse(finish)
  end

  def phrasetwo?
    "2 bottles of beer on the wall, 2 bottles of beer.\n"\
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"
  end

  def phraseone?
    "1 bottle of beer on the wall, 1 bottle of beer.\n"\
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def phrasezero?
    "No more bottles of beer on the wall, no more bottles of beer.\n"\
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end

  def phrase?(num)
    i = num - 1
    "#{num} bottles of beer on the wall, #{num} bottles of beer.\n"\
    "Take one down and pass it around, #{i} bottles of beer on the wall.\n"
  end
end
